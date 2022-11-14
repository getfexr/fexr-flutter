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

  RubixServiceClient getConnection(String gateway, String accessToken) {
    ClientChannel channel = ClientChannel(gateway,
        port: Const.PORT,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    return RubixServiceClient(channel,
        options:
            CallOptions(metadata: {'Authorization': 'Bearer $accessToken'}));
  }

  Future<CreateDIDRes> createDID(
      {required String gateway,
      required String didImagePath,
      required String publicSharePath,
      required String accessToken}) async {
    RubixServiceClient stub = getConnection(gateway, accessToken);
    try {
      var response = await stub.createDID(CreateDIDReq(
          didImage: await Dependencies().imageToBase64(didImagePath),
          publicShare: await Dependencies().imageToBase64(publicSharePath)));
      return response;
    } catch (e) {
      print(e);
      return CreateDIDRes();
    }
  }

  Future<Object> initiateTransaction(
      {required String gateway,
      required String accessToken,
      required RequestTransactionPayloadReq initiatePayload,
      required String imagePath}) async {
    RubixServiceClient stub = getConnection(gateway, accessToken);
      var response = await stub.initiateTransaction(RequestTransactionPayloadReq(
          receiver: initiatePayload.receiver,
          tokenCount: initiatePayload.tokenCount,
          comment: initiatePayload.comment,
          type: initiatePayload.type,
          privateKeyPass: initiatePayload.privateKeyPass));
      var unsignedLastObjectArr = response.lastObject;
      Iterable<TransactionLastObjectSigned> signedLastObjectArr = await Future.wait(unsignedLastObjectArr.map(
        (e) async => 
       TransactionLastObjectSigned(
        chainSign:  await GenerateSign().genSignFromShares(imagePath, e.hash),
        hash: e.hash,
        token: e.token
       )
      ));

      var finaliseTransactionResult = await stub.finaliseTransaction(FinaliseTransactionPayload(
        authSenderByRecHash: await GenerateSign().genSignFromShares(imagePath, response.authSenderByRecHash),
        lastObject: signedLastObjectArr,
        senderPayloadSign: await GenerateSign().genSignFromShares(imagePath, response.senderPayloadSign)
      ));
 //     return finaliseTransactionResult;
 //   } catch (e) {
    
      // return error 
      // ;
     // return TxnSummary();


      //return error
      return finaliseTransactionResult;
  //  }
  }

  Future<GetTransactionLogRes> getTransactionLog({required String gateway, required String accessToken, required GetTransactionLogReq transactionLogReq}) async {

    RubixServiceClient stub = getConnection(gateway, accessToken);
    try {
      var response = await stub.getTransactionLog(transactionLogReq);
      return response;
    } catch (e) {
      print(e);
      return GetTransactionLogRes();
    }

  }

  Future<GetBalanceRes> getBalance({required String gateway, required String accessToken}) async {
    RubixServiceClient stub = getConnection(gateway, accessToken);
    try {
      var response = await stub.getBalance(Empty());
      return response;
    } catch (e) {
      print(e);
      return GetBalanceRes();
    }

  }

  
}
