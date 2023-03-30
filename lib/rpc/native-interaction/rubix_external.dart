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
      {required String gateway, required String accessToken}) {
    ClientChannel channel = ClientChannel(gateway,
        port: Const.PORT,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
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

  ResponseStream<TxnRequest> transactionRequest(
      {required String gateway, required String accessToken}) {
    RubixExternalClient stub =
        getConnection(gateway: gateway, accessToken: accessToken);
    return stub.streamTransactionRequest(Empty());
  }
}
