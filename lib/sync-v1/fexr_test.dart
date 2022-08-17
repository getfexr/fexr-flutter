import 'package:flutter_test/flutter_test.dart';

import 'package:fexr/fexr.dart';
import 'package:fexr/sync-v1/pop/passport_service.dart';
import 'package:fexr/signature/auth_sign.dart';
import 'package:fexr/signature/gen_sign.dart';
import 'package:fexr/signature/dependencies.dart';
import 'dart:convert';

class FexrTest {
     String path = 'packages/fexr/assets/PrivateShare.png'  ;

  Future<bool> mainTest() async {
   // await PassportService().validatePermission("192.168.137.1", "abcd", 1);
   String S = 'Boom';
   
   String hash;
  
    hash = Dependencies().calculateHash(S);
    Future<List<int>> val = GenerateSign().genSignFromShares(pvtSharePath, hash);
    List<int> sign = await val;

    print('The sign is ${sign.join("")}');
    Future<bool> status;
    status = AuthenticateSign().verifySignature(sign, hash);

    return status;
  }
}
