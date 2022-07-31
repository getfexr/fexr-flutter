import 'package:fexr/sync-v1/const.dart';
import 'package:fexr/sync-v1/protos/pop/pop.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class PayService {
  late POPServiceClient stub;

  Future<txnPayload> initRubixTxn(String proxyIP, txnPayload txn) async {
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
        options: CallOptions(timeout: Duration(seconds: 1800)));

      await for (var payload stub.initRubixTxn(txnPayload(
          senderDID: txn.senderDID,
          receiverDID: txn.receiverDID,
          amount: txn.amount,
          comment: txn.comment,
          quorumList: txn.quorumList))) {
        print(payload.toString());
          }


    await channel.shutdown();
  }

  // Future<PushNotification> walletNotification(
  //     String proxyIP, String dID, int code) async {
  //   rubixWalletData response;
  //   final channel = ClientChannel(
  //     proxyIP,
  //     port: Const.PORT,
  //     options: ChannelOptions(
  //       credentials: ChannelCredentials.insecure(),
  //       codecRegistry:
  //           CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  //     ),
  //   );

  //   stub = POPServiceClient(channel,
  //       options: CallOptions(timeout: Duration(seconds: 10)));

  //   try {
  //     response =
  //         await stub.syncWalletData(web3WalletPermission(dID: dID, code: code));
  //     // result = response.toString();
  //   } catch (e) {
  //     return rubixWalletData();
  //   }

  //   await channel.shutdown();
  //   return response;

  //   // await for (var walletData
  //   //     in stub.syncWalletData(web3WalletPermission(dID: dID, code: code))) {

  //   // }
  // }
}
