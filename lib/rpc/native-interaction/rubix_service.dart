import 'package:fexr/const.dart';
import 'package:fexr/fexr.dart';
import 'package:fexr/protogen/native-interaction/rubix-native.pbgrpc.dart';
import 'package:fexr/signature/dependencies.dart';
import 'package:grpc/grpc.dart';



class RubixService {

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

  Future<InitiateTransactionRes> initiateTransaction ({required String gateway, required String accessToken, required InitiateTransactionReq initiatePayload, required String imagePath }) async {
    RubixServiceClient stub = getConnection(gateway,accessToken);
    try {
      var response = await stub.initiateTransaction(
        InitiateTransactionReq(
          payloadSigned: InitiateTransactionReq_SignedTransactionPayload(
            positions: initiatePayload.payloadSigned.positions,
            senderSign:InitiateTransactionReq_SignedTransactionPayload_SignedContent(content:initiatePayload.payloadSigned.senderSign.content , signature: await GenerateSign().genSignFromShares(imagePath, Dependencies().calculateHash(initiatePayload.payloadSigned.senderSign.content))),
            senderSignQ: InitiateTransactionReq_SignedTransactionPayload_SignedContent(content: initiatePayload.payloadSigned.senderSignQ.content, signature: await GenerateSign().genSignFromShares(imagePath, Dependencies().calculateHash(initiatePayload.payloadSigned.senderSignQ.content))),
            txnDetails: TxnDetails(wholeTokens: initiatePayload.payloadSigned.txnDetails.wholeTokens,
            wholeTokenChainHash: initiatePayload.payloadSigned.txnDetails.wholeTokenChainHash,
            partTokenChainHash: initiatePayload.payloadSigned.txnDetails.partTokenChainHash,
            partTokens: initiatePayload.payloadSigned.txnDetails.partTokens,
            partTokenChainArrays: initiatePayload.payloadSigned.txnDetails.partTokenChainArrays,
            amountLedger: initiatePayload.payloadSigned.txnDetails.amountLedger,
            tokenPreviousSender: initiatePayload.payloadSigned.txnDetails.tokenPreviousSender,
            doubleSpendString: initiatePayload.payloadSigned.txnDetails.doubleSpendString,
            receiverDidIpfsHash: initiatePayload.payloadSigned.txnDetails.receiverDidIpfsHash,
            requestedAmount: initiatePayload.payloadSigned.txnDetails.requestedAmount,
            comment: initiatePayload.payloadSigned.txnDetails.comment,
            tid: initiatePayload.payloadSigned.txnDetails.tid,
            newPart: initiatePayload.payloadSigned.txnDetails.newPart,
            oldPart: initiatePayload.payloadSigned.txnDetails.oldPart
            
            )
          )
      )
      );
      return response;
    } catch (e) {
      print(e);
      return InitiateTransactionRes();
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

