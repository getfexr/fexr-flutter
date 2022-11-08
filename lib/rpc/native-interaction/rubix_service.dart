import 'package:fexr/const.dart';
import 'package:fexr/fexr.dart';
import 'package:fexr/protogen/native-interaction/rubix-native.pbgrpc.dart';
import 'package:fexr/signature/dependencies.dart';
import 'package:grpc/grpc.dart';



class RubixService {
  static final RubixService _singleton = RubixService._internal();

  factory RubixService() {
    return _singleton;
  }

  RubixService._internal();


   RubixServiceClient getConnection(String gateway, String accessToken){
      ClientChannel channel = ClientChannel(gateway,
          port: Const.PORT,
          options: const ChannelOptions(
              credentials: ChannelCredentials.insecure()));
       return RubixServiceClient(channel, options: CallOptions(metadata: {
      'Authorization': 'Bearer $accessToken'
    }));
  
   }

  Future<CreateDIDRes> createDID({required String gateway, required String didImagePath, required String publicSharePath, required String accessToken}) async {
    RubixServiceClient stub = getConnection(gateway,accessToken);
    try {
      var response = await stub.createDID(
        CreateDIDReq(
          didImage: await Dependencies().imageToBase64(didImagePath),
          publicShare: await Dependencies().imageToBase64(publicSharePath)

        ));
    return response;
    } catch (e) {
      print(e);
      return CreateDIDRes();
    }

  }

  Future<TxnSummary> initiateTransaction ({required String gateway, required String accessToken, required InitiateTransactionReq initiatePayload, required String imagePath }) async {
    RubixServiceClient stub = getConnection(gateway,accessToken);
    try {
      var response = await stub.initiateTransaction(
        InitiateTransactionReq(
          payloadSigned: InitiateTransactionReq_SignedTransactionPayload(
            positions: initiatePayload.payloadSigned.positions,
            senderSign:InitiateTransactionReq_SignedTransactionPayload_SignedContent(content:initiatePayload.payloadSigned.senderSign.content , signature: await GenerateSign().genSignFromShares(imagePath, Dependencies().calculateHash(initiatePayload.payloadSigned.senderSign.content))),
            senderSignQ: InitiateTransactionReq_SignedTransactionPayload_SignedContent(content: initiatePayload.payloadSigned.senderSignQ.content, signature: await GenerateSign().genSignFromShares(imagePath, Dependencies().calculateHash(initiatePayload.payloadSigned.senderSignQ.content))),
            txnDetails: initiatePayload.payloadSigned.txnDetails
          )
      )
      );
      return response;
    } catch (e) {
      print(e);
      return TxnSummary();
    }
}

  Future<RequestTransactionPayloadRes> requestTransactionPayload({required String gateway, required String accessToken, required RequestTransactionPayloadReq payloadReq}) async {
    RubixServiceClient stub = getConnection(gateway,accessToken);
    try {
      var response = await stub.requestTransactionPayload(
        RequestTransactionPayloadReq(
          receiver: payloadReq.receiver,
          tokenCount: payloadReq.tokenCount,
          comment: payloadReq.comment,
          type: payloadReq.type
        )
      );
      return response;
    } catch (e) {
      print(e);
      return RequestTransactionPayloadRes();
    } 

  }
  
}
