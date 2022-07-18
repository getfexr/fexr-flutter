import 'package:fexr/sync-v1/protos/pop/pop.pbgrpc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';
import 'package:fexr/sync-v1/protos/pop/pop.pb.dart';
import 'package:fexr/sync-v1/protos/pop/pop.pbenum.dart';
import 'package:fexr/sync-v1/protos/pop/pop.pbjson.dart';
import 'package:protobuf/protobuf.dart';

class PassportService {
  late POPServiceClient stub;
  

  Future<void> web3WalletPermissionRequest(
      String proxyIP, String dID, int code) async {
    final channel = ClientChannel(
      proxyIP,
      port: 53550,
      options: ChannelOptions(
        credentials: ChannelCredentials.insecure(),
        codecRegistry:
            CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );
    
   stub = POPServiceClient(channel,options: CallOptions(timeout: Duration(seconds: 30)));

    try {
      var response = await stub.validateCertificate(web3WalletPermission(
          dID: dID, code: code));

      print('Response from web3WalletPermisiion: ${response.toString()}');
      var walletData = await stub.fetchWalletData(web3WalletPermission(
          dID: dID, code: code));
      print('Response from fetchWalletData: ${walletData.toString()}');


    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
  }
  // ResponseFuture<p2pConnectionStatus> p2pConnectionStatusRequest(bool connectionStatus, String code){
  // return stub.validateCertificate(
  //     web3WalletPermissionRequest(proxyIP, dID, code)()
  //       ..dID = User.dID
  //       ..code = code
  //       ..peerID = User.peerID);      
        
  // }
}




  





