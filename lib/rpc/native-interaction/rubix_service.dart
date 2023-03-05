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

  Future<CreateDIDRes> createDID(
      {required String gateway,
      required String didImagePath,
      required String publicSharePath,
      required String publicKey,
      required String accessToken}) async {
    RubixServiceClient stub =
        getConnection(gateway: gateway, accessToken: accessToken);
    try {
      var response = await stub.createDID(CreateDIDReq(
          didImage: await Dependencies().imageToBase64(didImagePath),
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
      sender: initiatePayload.sender,
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
      var hash = Dependencies().calculateHash(initiateTransactionResponse.hash);
      var signContent = Uint8List.fromList(hash.codeUnits);
      var response = await stub.signResponse(HashSigned(
          id: requestId,
          pvtSign: KeyPair().keySignature(signContent, privateKey),
          imgSign: await GenerateSign().genSignFromShares(imagePath, hash)));
      print("Sign Response: ${response.status} ${response}");

      return response;
  }

  Future<GetTransactionLogRes> getTransactionLog(
      {required String gateway,
      required String accessToken,
      required GetTransactionLogReq transactionLogReq}) async {
    RubixServiceClient stub =
        getConnection(gateway: gateway, accessToken: accessToken);
    try {
      var response = await stub.getTransactionLog(transactionLogReq);
      return response;
    } catch (e) {
      print(e);
      return GetTransactionLogRes();
    }
  }

  Future<GetBalanceRes> getBalance(
      {required String gateway, required String accessToken}) async {
    RubixServiceClient stub =
        getConnection(gateway: gateway, accessToken: accessToken);
    try {
      var response = await stub.getBalance(Empty());
      return response;
    } catch (e) {
      print(e);
      return GetBalanceRes();
    }
  }
}
