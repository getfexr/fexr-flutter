import 'package:fexr/fexr.dart';
import 'package:grpc/grpc.dart';
import 'package:fexr/const.dart';


class SkyService {

SkyServiceClient getConnection({required String gateway}) {
  ClientChannel channel = ClientChannel(gateway,
      port: Const.PORT,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()));
  return SkyServiceClient(channel);
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