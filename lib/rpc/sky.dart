import 'package:fexr/fexr.dart';
import 'package:grpc/grpc.dart';
import 'package:fexr/const.dart';


class HostResponse {

  String? message;
  Object? error;
  HostRes_AccessToken? accessToken;
  HostRes_RefreshToken? refreshToken;
  HostResponse({this.message, this.error, this.accessToken, this.refreshToken});

}


class SkyService {
  
SkyServiceClient getConnection({required String gateway}) {
  ClientChannel channel = ClientChannel(gateway,
      port: Const.PORT,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()));
  return SkyServiceClient(channel);
}

Future<HostResponse> host({required String otp, required String gateway, required String address, required String f0}) async{
  SkyServiceClient stub = getConnection(gateway: gateway);
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


Future<ConnectionRes> checkConnection({required String gateway, required String accessToken}) async {
    SkyServiceClient stub = getConnection(gateway: gateway);
    try {
      var response = await stub.checkConnection(Empty());
      return response;
    } catch (e) {
      print(e);
      return ConnectionRes();
    }
  }

  Future<GetUserInfoRes> getUserInfo({required String gateway}) async {
    SkyServiceClient stub = getConnection(gateway: gateway);
    try {
      var response = await stub.getUserInfo(Empty());
      return response;
    } catch (e) {
      print(e);
      return GetUserInfoRes();
    }
  }

}