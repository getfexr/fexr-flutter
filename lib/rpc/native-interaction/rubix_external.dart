import 'package:fexr/const.dart';
import 'package:grpc/grpc.dart';
import 'package:fexr/protogen/google/protobuf/empty.pb.dart';
import 'package:fexr/protogen/native-interaction/rubix-external.pbgrpc.dart';

class RubixExternalService {
  static final RubixExternalService _singleton =
      RubixExternalService._internal();

  factory RubixExternalService() {
    return _singleton;
  }

  RubixExternalService._internal();

  RubixExternalClient getConnection(
      {required String gateway,
      required String accessToken,
      Duration idleTimeout = const Duration(minutes: 5)}) {
    ClientChannel channel = ClientChannel(gateway,
        port: Const.PORT,
        options: ChannelOptions(
            credentials: ChannelCredentials.insecure(),
            idleTimeout: idleTimeout));
    return RubixExternalClient(channel,
        options:
            CallOptions(metadata: {'Authorization': 'Bearer $accessToken'}));
  }

  void approveAuthRequest(
      {required String gateway,
      required String accessToken,
      required String uuid}) {
    RubixExternalClient stub =
        getConnection(gateway: gateway, accessToken: accessToken);
    stub.approveAuthRequest(AuthRequest(uuid: uuid));
  }

  ResponseStream<TxnRequest> streamTransactionRequests(
      {required String gateway, required String accessToken}) {
    RubixExternalClient stub =
        getConnection(gateway: gateway, accessToken: accessToken);
    return stub.streamTransactionRequest(Empty());
  }

   ResponseFuture<OrgStatus> approveOrgAuthRequest({required String gateway, required String accessToken, required String orgName, required String callBackUrl, required String sessionId}){
    RubixExternalClient stub =
        getConnection(gateway: gateway, accessToken: accessToken);
    return stub.approveOrgAuthRequest(OrgAuthRequest(orgName: orgName, callBackUrl: callBackUrl, sessionId: sessionId));
  }
}
