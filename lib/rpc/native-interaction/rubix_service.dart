import 'package:fexr/const.dart';
import 'package:fexr/fexr.dart';
import 'package:fexr/signature/dependencies.dart';
import 'package:grpc/grpc.dart';

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
      return response;
    } catch (e) {
      print(e);
      return CreateDIDRes();
    }
  }

  Future<TxnSummary> initiateTransaction(
      {required String gateway,
      required String accessToken,
      required RequestTransactionPayloadReq initiatePayload,
      required String imagePath,
      Duration idleTimeout = const Duration(minutes: 15)}) async {
    RubixServiceClient stub = getConnection(
        gateway: gateway, accessToken: accessToken, idleTimeout: idleTimeout);
    RequestTransactionPayloadRes response = await stub.initiateTransaction(
        RequestTransactionPayloadReq(
            receiver: initiatePayload.receiver,
            tokenCount: initiatePayload.tokenCount,
            comment: initiatePayload.comment,
            type: initiatePayload.type,
            privateKeyPass: initiatePayload.privateKeyPass));
    var unsignedLastObjectArr = response.lastObject;
    var unsignedPledgeDetails = response.pledgeDetails;

    Iterable<TransactionLastObjectSigned> signedLastObjectArr =
        await Future.wait(unsignedLastObjectArr.map((e) async =>
            TransactionLastObjectSigned(
                chainSign:
                    await GenerateSign().genSignFromShares(imagePath, e.hash),
                hash: e.hash,
                token: e.token)));

    Map<String, PledgeDetailSigned> pledgeDetails = {};

    for (final keyValue in unsignedPledgeDetails.entries) {
      var hashes = keyValue.value.valueArr;
      var signedHashes = await Future.wait(hashes.map((e) async => SignedHash(
          hash: e,
          sign: await GenerateSign().genSignFromShares(imagePath, e))));

      pledgeDetails[keyValue.key] = PledgeDetailSigned(valueArr: signedHashes);
    }

    var finaliseTransactionResult = await stub.finaliseTransaction(
        FinaliseTransactionPayload(
            authSenderByRecHash: SignedHash(
                hash: response.authSenderByRecHash,
                sign: await GenerateSign().genSignFromShares(
                    imagePath, response.authSenderByRecHash)),
            lastObject: signedLastObjectArr,
            senderPayloadSign: SignedHash(
                hash: response.senderPayloadSign,
                sign: await GenerateSign()
                    .genSignFromShares(imagePath, response.senderPayloadSign)),
            privateKeyPass: initiatePayload.privateKeyPass,
            pledgeDetails: pledgeDetails));
    return finaliseTransactionResult;
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
