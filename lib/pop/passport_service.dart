import 'package:fexr/const.dart';
import 'package:fexr/sync-v1/protos/pop/pop.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class PassportService {
  late POPServiceClient stub;

  Future<p2pConnectionStatus> validatePermission(
      String proxyIP, String dID, int code) async {
    print("Proxy connecting: $proxyIP ...");

    p2pConnectionStatus response;
    final channel = ClientChannel(
      proxyIP,
      port: Const.PORT,
      options: ChannelOptions(
        credentials: ChannelCredentials.insecure(),
        codecRegistry:
            CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );

    stub = POPServiceClient(channel,
        options: CallOptions(timeout: Duration(seconds: 10)));

    try {
      response = await stub.validatePermission(
          web3WalletPermission(dID: dID, code: code, payload: ""));
      print(response.toString());
    } catch (e) {
      return p2pConnectionStatus(
          connected: false, code: 404, message: e.toString());
    }
    await channel.shutdown();
    return response;
  }

  Future<rubixWalletData> syncWalletData(
      String proxyIP, String dID, int code) async {
    rubixWalletData response;
    final channel = ClientChannel(
      proxyIP,
      port: Const.PORT,
      options: ChannelOptions(
        credentials: ChannelCredentials.insecure(),
        codecRegistry:
            CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );

    stub = POPServiceClient(channel,
        options: CallOptions(timeout: Duration(seconds: 10)));

    try {
      response =
          await stub.syncWalletData(web3WalletPermission(dID: dID, code: code));
      // result = response.toString();
    } catch (e) {
      return rubixWalletData();
    }

    await channel.shutdown();
    return response;

    // await for (var walletData
    //     in stub.syncWalletData(web3WalletPermission(dID: dID, code: code))) {

    // }
  }

  Future<p2pConnectionStatus> uploadWalletKeys(
      String proxyIP, String dID, int code) async {
    p2pConnectionStatus response;
    final channel = ClientChannel(
      proxyIP,
      port: Const.PORT,
      options: ChannelOptions(
        credentials: ChannelCredentials.insecure(),
        codecRegistry:
            CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );

    stub = POPServiceClient(channel,
        options: CallOptions(timeout: Duration(seconds: 10)));

    try {
      response = await stub
          .validatePermission(web3WalletPermission(dID: dID, code: code));

      // result = response.toString();
    } catch (e) {
      return p2pConnectionStatus(
          connected: false, code: 404, message: e.toString());
    }
    return response;
    // await channel.shutdown();
  }

  Future<p2pConnectionStatus> invalidatePermission(
      String proxyIP, String dID, int code) async {
    p2pConnectionStatus response;
    final channel = ClientChannel(
      proxyIP,
      port: Const.PORT,
      options: ChannelOptions(
        credentials: ChannelCredentials.insecure(),
        codecRegistry:
            CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );

    stub = POPServiceClient(channel,
        options: CallOptions(timeout: Duration(seconds: 10)));

    try {
      response = await stub
          .invalidatePermission(web3WalletPermission(dID: dID, code: code));

      // result = response.toString();
    } catch (e) {
      return p2pConnectionStatus(
          connected: false, code: 404, message: e.toString());
    }
    return response;
    // await channel.shutdown();
  }
}
