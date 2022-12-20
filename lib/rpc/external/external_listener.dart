import 'package:grpc/grpc.dart';
import 'package:fexr/protogen/external/external-listener.pbgrpc.dart';
import 'package:fexr/protogen/google/protobuf/empty.pb.dart';

class ExternalListenerService {
  ResponseStream<Authenticate> authenticateRequest ({required String gateway}){
    ClientChannel channel = ClientChannel(gateway,
        port: 6942,
        options: const ChannelOptions(credentials: ChannelCredentials.insecure()));
    ExternalListenerServiceClient stub = ExternalListenerServiceClient(channel);
    ResponseStream<Authenticate> authenticate =  stub.streamAuthenticateRequest(Empty());
    return authenticate;
  }

  ResponseStream<TransactionDetails> transactionRequest ({required String gateway}) {
    ClientChannel channel = ClientChannel(gateway,
        port: 6942,
        options: const ChannelOptions(credentials: ChannelCredentials.insecure()));
    ExternalListenerServiceClient stub = ExternalListenerServiceClient(channel);
    return stub.streamTransactionRequest(Empty());

  }
}