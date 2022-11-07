import 'package:fexr/const.dart';
import 'package:fexr/fexr.dart';
import 'package:fexr/protogen/native-interaction/rubix-native.pb.dart';
import 'package:fexr/protogen/native-interaction/rubix-native.pbgrpc.dart';
import 'package:fexr/protogen/google/protobuf/empty.pb.dart';
import 'package:fexr/signature/dependencies.dart';
import 'package:grpc/grpc.dart';
import 'package:fexr/protogen/sky.pbgrpc.dart';
import 'package:fexr/rpc/host.dart';



class rubixService {
   late RubixServiceClient stub;
   late SkyServiceClient sky;
   late ClientChannel channel;

  Future<CreateDIDRes> createDID(String proxyIP, String didImageBase64, String publicShareImageBase64, dynamic bearerToken) async {
    final channel = ClientChannel(proxyIP,
        port: Const.PORT,
        options: ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = RubixServiceClient(channel, options: CallOptions(metadata: {
      'Authorization': 'Bearer $bearerToken'
    }));
    
    try {
      var response = await stub.createDID(
        CreateDIDReq(
          didImage: didImageBase64,
          publicShare: publicShareImageBase64

        ));
    return response;
    } catch (e) {
      print(e);
      return CreateDIDRes();
    }

  }

  Future<InitiateTransactionRes> initiateTransaction (String proxyIP, String bearerToken, InitiateTransactionReq initiatePayload, String imagePath ) async {
    
    final channel = ClientChannel(proxyIP,
        port: Const.PORT,
        options: ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = RubixServiceClient(channel, options: CallOptions(metadata: {'Authorization': 'Bearer $bearerToken'}));
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

  Future<RequestTransactionPayloadRes> requestTransactionPayload(String proxyIP, String bearerToken, RequestTransactionPayloadReq payloadReq) async {
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

// Future<void> main() async {
//     late SkyServiceClient sky;
//     HostResponse data = await HostService().host("6629","localhost", "wfeguewgfuye", "wgdqwudg"); 
//     dynamic bearerToken = data.accessToken?.token as dynamic;
//     print(bearerToken);
//     final channel = ClientChannel("localhost",
//         port: Const.PORT,
//         options: ChannelOptions(credentials: ChannelCredentials.insecure()));
//     //    sky = SkyServiceClient(channel);
//         sky = SkyServiceClient(channel, options: CallOptions(
//         metadata: {
//           'Authorization': 'Bearer ${bearerToken}'
//         }
//       ));
//       var response = await sky.getUserInfo(Empty());
//       print(response);
//   }