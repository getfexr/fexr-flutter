import 'package:flutter_test/flutter_test.dart';

import 'package:fexr/fexr.dart';
import 'package:fexr/sync-v1/pop/passport_service.dart';
import 'package:fexr/sync-v1/pop/oracle_service.dart';
import 'package:fexr/sync-v1/pop/pay_service.dart';
import 'package:fexr/sync-v1/protos/pop/pop.pbgrpc.dart';

class FexrTest{
Future<void> mainTest() async {
  await PassportService().web3WalletPermissionRequest("192.168.137.1","abcd",1);
  
}
}


