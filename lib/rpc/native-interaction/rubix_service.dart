import 'package:fexr/const.dart';
import 'package:fexr/protogen/native-interaction/rubix-native.pb.dart';
import 'package:fexr/protogen/native-interaction/rubix-native.pbgrpc.dart';
import 'package:grpc/grpc.dart';



class rubixService {
   late RubixServiceClient stub;
   late ClientChannel channel;
  // const bearerToken = authResponse.bearerToken; // or JWT or API Key
  // var authClient = createClient(options:CallOptions(metadata:{ 'Authorization': 'Bearer ${bearerToken}' }));

  Future<CreateDIDRes> createDID(String proxyIP, String didImageBase64, String publicShareImageBase64, dynamic bearerToken) async {
    final channel = ClientChannel(proxyIP,
        port: Const.PORT,
        options: ChannelOptions(credentials: bearerToken));
    stub = RubixServiceClient(channel);
    
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

  


}