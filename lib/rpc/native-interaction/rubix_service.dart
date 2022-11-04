import 'package:fexr/const.dart';
import 'package:fexr/protogen/native-interaction/rubix-native.pb.dart';
import 'package:fexr/protogen/native-interaction/rubix-native.pbgrpc.dart';
import 'package:fexr/protogen/google/protobuf/empty.pb.dart';
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

  Future<InitiateTransactionRes> initiateTransaction (String proxyIP, String bearerToken) async {
    
    final channel = ClientChannel(proxyIP,
        port: Const.PORT,
        options: ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = RubixServiceClient(channel, options: CallOptions(metadata: {'Authorization': 'Bearer $bearerToken'}));
    try {
      var response = await stub.initiateTransaction(
        InitiateTransactionReq(
          payloadSigned: InitiateTransactionReq_SignedTransactionPayload(
            positions: '',
            senderSign:InitiateTransactionReq_SignedTransactionPayload_SignedContent(content: '', signature: ''),
            senderSignQ: InitiateTransactionReq_SignedTransactionPayload_SignedContent(content: '', signature: ''),
            txnDetails: TxnDetails(wholeTokens: '',
            wholeTokenChainHash: '',
            partTokenChainHash: '',
            partTokens: '',
            partTokenChainArrays: '',
            amountLedger: '',
            tokenPreviousSender: '',
            doubleSpendString: '',
            receiverDidIpfsHash: '',
            )
          ).
        )
      );
      return response;
    } catch (e) {
      print(e);
      return InitiateTransactionRes();
    }


    

    
  }

  Future<RequestTransactionPayloadRes> requestTransactionPayload() async {
    try {
      var response = await stub.requestTransactionPayload(
        RequestTransactionPayloadReq(
          payloadSigned: RequestTransactionPayloadReq_SignedTransactionPayload().
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