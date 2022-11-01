import 'package:fexr/const.dart';
import 'package:fexr/sync-v1/protos/google/protobuf/empty.pb.dart';
import 'package:fexr/sync-v1/protos/pop/pop.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class PayService {
  late POPServiceClient stub;

  List<txnStatus> _txnStatusList = [];

  void putTxnStatus(txnStatus txnStatus) {
    if (_txnStatusList.isEmpty) {
      _txnStatusList.add(txnStatus);
    } else {
      for (int i = 0; i < _txnStatusList.length; i++) {
        if (_txnStatusList[i].tid == txnStatus.tid) {
          _txnStatusList.removeAt(i);
          _txnStatusList.add(txnStatus);
          break;
        } else if (i == _txnStatusList.length - 1) {
          _txnStatusList.add(txnStatus);
        }
      }
    }
  }

  txnStatus getTxnStatus(String fexrId) {
    for (var txnStatus in _txnStatusList) {
      if (txnStatus.tid == fexrId) {
        return txnStatus;
      }
    }
    return txnStatus(
        tid: fexrId,
        status: txnStatus_TRANSACTION_STATUS.CANCELED,
        message: "Transaction not found");
  }

  // create a list of status for each fexrId and their statuses

  Future<void> initRubixTxn(String proxyIP, txnPayload txn) async {
    print('initiatiing transfer for: ${txn.fexrId}');
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

    await for (var status in stub.initRubixTxn(txn)) {
      putTxnStatus(status);
      print("status: ${status.toString()}");
    }

    await channel.shutdown();
  }
}
