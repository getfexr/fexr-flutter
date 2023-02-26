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
      print("Did is ${response.did}");
      print("Status is ${response.status}");
      return response;
    } catch (e) {
      print(e);
      return CreateDIDRes();
    }
  }

  Future<RequestTransactionPayloadRes> initiateTransaction(
      {required String gateway,
      required String accessToken,
      required RequestTransactionPayloadReq initiatePayload,
      required String imagePath,
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

    return RequestTransactionPayloadRes(
        hash: response.hash, requestId: response.requestId);
  }

  Future<Status> signResponse(
      {required String requestId,
      required List<int> pvtSign,
      required String imagePath,
      required String hash,
      required String gateway,
      required String accessToken}) async {
    RubixServiceClient stub =
        getConnection(gateway: gateway, accessToken: accessToken);
    try {
      var response = await stub.signResponse(HashSigned(
          id: requestId,
          pvtSign: pvtSign,
          imgSign: await GenerateSign()
                    .genSignFromShares(imagePath, hash)));
                    print(
                        "Sign Response: ${response.status} ${response}");
                    
      return response;
    } catch (e) {
      print(e);
      return Status();
    }
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
