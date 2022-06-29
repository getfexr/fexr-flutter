import 'package:grpc/grpc.dart';

class PassportService {

  Future<void> web3WalletPermissionRequest(
      String proxyIP, String dID, int code) async {
    final channel = ClientChannel(
      proxyIP,
      port: 6942,
      options: ChannelOptions(
        credentials: ChannelCredentials.secure(),
        codecRegistry:
            CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );

    final stub = POP(channel);

    try {
      final response = await stub.sayHello(
        POPRequest()..name = dID,
        options: CallOptions(compression: const GzipCodec()),
      );
      print('Greeter client received: ${response.message}');
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
  }
}