import 'package:flutter_test/flutter_test.dart';
import 'package:sha3/sha3.dart';
import 'dart:typed_data';
import 'package:convert/convert.dart';

import 'package:fexr/fexr.dart';
import 'package:fexr/sync-v1/pop/passport_service.dart';
import 'package:fexr/signature/auth_sign.dart';
import 'package:fexr/signature/gen_sign.dart';
import 'package:fexr/signature/dependencies.dart';
import 'dart:convert';

class FexrTest {
     String path = 'packages/fexr/assets/PrivateShare.png'  ;

  Future<String> mainTest() async {
   // await PassportService().validatePermission("192.168.137.1", "abcd", 1);
   String S = 'Boom';
   
   String hash;
  
    hash = Dependencies().calculateHash(S);
    Future<List<int>> val = GenerateSign().genSignFromShares(path, hash);
    List<int> sign = await val;
  //  print('The sign is $sign');
    print('The sign is ${sign.join("")}');
    Future<bool> status;
   status = AuthenticateSign().verifySignature(sign,hash);
  print(status);
  print('The status is $status');
  
    return hash;


  }
  
}
