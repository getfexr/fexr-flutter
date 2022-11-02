
import 'package:fexr/const.dart';
import 'package:fexr/protogen/sky.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:fexr/signature/gen_sign.dart';


class HostResponse {
  String? message;
  Object? error;

  HostRes_AccessToken? accessToken;
  HostRes_RefreshToken? refreshToken;

  HostResponse({this.message, this.error, this.accessToken, this.refreshToken});
}

class HostService {
  late SkyServiceClient stub;
  late ClientChannel channel;


  Future<HostResponse> host(String otp, String proxyIP, String address, String f0) async{
    print("Connecting to proxy $proxyIP");
    final channel = ClientChannel(proxyIP,
        port: Const.PORT,
        options: const ChannelOptions(
            credentials: ChannelCredentials.insecure()));
    stub = SkyServiceClient(channel);

    try{
      var response = await stub.host(
        HostReq(
          otp: otp,
          signedOtp: await GenerateSign().sign(otp),
          address: address,
          f0: f0,
        ),
      );
      
      return HostResponse(
        message: "Authentication Success!",
        accessToken: response.accessToken,
        refreshToken: response.refreshToken,
      );
    } catch (e) {
      return HostResponse(
        message: "Authentication Failed",
        error: e,
      );
    }

 }
}

