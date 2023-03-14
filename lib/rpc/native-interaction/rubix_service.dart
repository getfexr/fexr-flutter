import 'dart:convert';

import 'package:fexr/const.dart';
import 'package:fexr/fexr.dart';
import 'package:fexr/signature/dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:pointycastle/pointycastle.dart';

class RubixService {
  static final RubixService _singleton = RubixService._internal();

  factory RubixService() {
    return _singleton;
  }

  RubixService._internal();

  RubixServiceClient getConnection(
      {required String gateway,
      required String accessToken,
      Duration idleTimeout = const Duration(minutes: 5)}) {
    ClientChannel channel = ClientChannel(gateway,
        port: Const.PORT,
        options: ChannelOptions(
            credentials: ChannelCredentials.insecure(),
            idleTimeout: idleTimeout));
    return RubixServiceClient(channel,
        options:
            CallOptions(metadata: {'Authorization': 'Bearer $accessToken'}));
  }

  void createDIDChallenge(String publicKey) {
    RubixServiceClient stub = getConnection(gateway: "", accessToken: "");

    var response = stub.createDIDChallenge(ChallengeReq(publicKey: publicKey));
    print("Challenge is $response");
  }

  Future<CreateDIDRes> createDID(
      {required String gateway,
      required String didImagePath,
      required String publicSharePath,
      required String publicKey,
      required String privateKeyString}) async {
    RubixServiceClient stub = getConnection(gateway: gateway, accessToken: "");
    var response =
        await stub.createDIDChallenge(ChallengeReq(publicKey: publicKey));
    var challengeString = response.challenge;
    var privateKey = KeyPair().privateKeyFromPem(privateKeyString);
    var signContent = Uint8List.fromList(challengeString.codeUnits);
    var pvtSign = KeyPair().keySignature(signContent, privateKey);
    return _createDID(
        gateway: gateway,
        didImagePath: didImagePath,
        publicSharePath: publicSharePath,
        publicKey: publicKey,
        signature: pvtSign,
        payload: challengeString);
  }

  Future<CreateDIDRes> _createDID(
      {required String gateway,
      required String didImagePath,
      required String publicSharePath,
      required String publicKey,
      required Uint8List signature,
      required String payload}) async {
    RubixServiceClient stub = getConnection(gateway: gateway, accessToken: "");
    try {
      var response = await stub.createDID(CreateDIDReq(
          didImage: await Dependencies().imageToBase64(didImagePath),
          ecdsaChallengeResponse:
              SignedPayload(payload: payload, signature: signature),
          publicShare: await Dependencies().imageToBase64(publicSharePath),
          publicKey: publicKey));
      print("Did is ${response.did}");
      print("Status is ${response.status}");
      return response;
    } catch (e) {
      print(e);
      return CreateDIDRes();
    }
  }

  Future<Status> initiateTransaction(
      {required String gateway,
      required String accessToken,
      required RequestTransactionPayloadReq initiatePayload,
      required String imagePath,
      required String privateKeyString,
      Duration idleTimeout = const Duration(minutes: 15)}) async {
    RubixServiceClient stub = getConnection(
        gateway: gateway, accessToken: accessToken, idleTimeout: idleTimeout);
    RequestTransactionPayloadRes response =
        await stub.initiateTransaction(RequestTransactionPayloadReq(
      receiver: initiatePayload.receiver,
      tokenCount: initiatePayload.tokenCount,
      comment: initiatePayload.comment,
      type: initiatePayload.type,
    ));
    var privateKey = KeyPair().privateKeyFromPem(privateKeyString);
    print("Initiate Transaction Response: ${response}");
    var signResp = signResponse(
        initiateTransactionResponse: response,
        imagePath: imagePath,
        privateKey: privateKey,
        stub: stub);
    return signResp;
  }

  Future<Status> generateRbt(
      {required String did,
      required double tokenCount,
      required String accessToken,
      required String gateway,
      required String imagePath,
      required String privateKeyString}) async {
    RubixServiceClient stub =
        getConnection(gateway: gateway, accessToken: accessToken);
    var privateKey = KeyPair().privateKeyFromPem(privateKeyString);
    var response =
        await stub.generateRbt(GenerateReq(did: did, tokenCount: tokenCount));

    print(response);
    var signResp = signResponse(
        initiateTransactionResponse: response,
        imagePath: imagePath,
        privateKey: privateKey,
        stub: stub);
    return signResp;
  }

  Future<Status> signResponse(
      {required RequestTransactionPayloadRes initiateTransactionResponse,
      required String imagePath,
      required ECPrivateKey privateKey,
      required RubixServiceClient stub}) async {
    var requestId = initiateTransactionResponse.requestId;
    var hashbase64 = initiateTransactionResponse.hash;
    var base64decode = base64.decode(hashbase64);
    var hash = utf8.decode(base64decode);

    var imgSign = await GenerateSign().genSignFromShares(imagePath, hash);
    var imgSignBytes = Dependencies().bitstreamToBytes(imgSign);
    var imgSignHash = Dependencies().calculateHash(imgSign);
    var signContent = Uint8List.fromList(imgSignHash.codeUnits);

    var response = await stub.signResponse(HashSigned(
        id: requestId,
        pvtSign: KeyPair().keySignature(signContent, privateKey),
        imgSign: imgSignBytes));
    print("Sign Response:${response}");

    return response;
  }

  Future<GetBalanceRes> getBalance(
      {required String gateway,
      required String accessToken,
      required String did}) async {
    RubixServiceClient stub =
        getConnection(gateway: gateway, accessToken: accessToken);
    var response = await stub.getBalance(Empty());
    print("Get Balance Response:${response}");
    return response;
  }

  ResponseStream<IncomingTxnDetails> streamIncomingTxn({
    required String gateway,
    required String accessToken,
  }) {
    RubixServiceClient stub =
        getConnection(gateway: gateway, accessToken: accessToken);
    return stub.streamIncomingTxn(Empty());
  }

  Future<Token> generateAccessToken(
      {required String gateway,
      required String accessToken,
      required String privateKeyString}) async {
    RubixServiceClient stub =
        getConnection(gateway: gateway, accessToken: accessToken);
    var resp = await stub.getAccessTokenChallenge(Empty());
    var challengeString = resp.challenge;
    var privateKey = KeyPair().privateKeyFromPem(privateKeyString);
    var signContent = Uint8List.fromList(challengeString.codeUnits);
    var pvtSign = KeyPair().keySignature(signContent, privateKey);
    var response = await stub.generateAccessToken(
        SignedPayload(payload: challengeString, signature: pvtSign));
    return response;
  }
}
