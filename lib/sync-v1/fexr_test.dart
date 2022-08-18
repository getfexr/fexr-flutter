import 'package:flutter_test/flutter_test.dart';
import 'package:path_provider/path_provider.dart';

import 'package:fexr/fexr.dart';
import 'package:fexr/sync-v1/pop/passport_service.dart';
import 'package:fexr/sync-v1/signature/auth_sign.dart';
import 'package:fexr/sync-v1/signature/gen_sign.dart';
import 'package:fexr/sync-v1/signature/dependencies.dart';
import 'dart:convert';

class FexrTest {
     

  Future<bool> mainTest() async {
   // await PassportService().validatePermission("192.168.137.1", "abcd", 1);
   String S = 'Boom';
   String path = (await getApplicationSupportDirectory()).path;
   String pvtSharePath = '$path/Encrypted/Temp/PrivateShare.png';

   String hash;
  
    hash = Dependencies().calculateHash(S);
    Future<List<int>> val = GenerateSign().genSignFromShares(pvtSharePath, hash);
    List<int> sign = await val;

    
    Future<bool> status;
    status = AuthenticateSign().verifySignature(sign, hash);

    return status;
  }
}
