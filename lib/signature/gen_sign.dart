import 'dart:convert';
import 'dart:js';
import 'package:path_provider/path_provider.dart';
import 'package:sha3/sha3.dart';

import 'package:fexr/signature/dependencies.dart';

class GenerateSign {
  Future<String> genSignFromShares(String imagePath, String hash) async{
    Future<String> firstPrivatebin = Dependencies().imageToBinary(imagePath);
    String firstPrivate = await firstPrivatebin;
    List<int> privateIntegerArray = firstPrivate.split('').map(int.parse).toList();
    JsonCodec P = Dependencies().randomPositions("signer", hash, 32, privateIntegerArray);
    List<int> finalPos = P.decode(P.toString())["posForSign"];
    List<int> p1Sign = Dependencies().getPrivatePosition(finalPos, privateIntegerArray);
    //convert the list of int to string
  /*  StringBuffer p1SignString = new StringBuffer();
    for (int i = 0; i < p1Sign.length; i++) {
      p1SignString.write(p1Sign[i].toString());
    }*/
    String p1SignString = utf8.decode(p1Sign);
    return p1SignString.toString();



  }

  Future<String> sign(String detailsString) async {
    String hash;
    JsObject details = new JsObject(context['JSON'], [detailsString]);
    String decentralizedID = details['did'];
    String path = (await getApplicationSupportDirectory()).path;
    String pvtSharePath = '$path/privateShare.png';
    var k = SHA3(256, KECCAK_PADDING, 256);
    k.update(utf8.encode(detailsString));
    hash = k.digest().toString();
    Future<String> firstPrivatebin = Dependencies().imageToBinary(pvtSharePath);
    String firstPrivate = await firstPrivatebin;
    List<int> privateIntegerArray = firstPrivate.split('').map(int.parse).toList();
    JsonCodec P = Dependencies().randomPositions("signer", hash, 32, privateIntegerArray);
    List<int> finalPos = P.decode(P.toString())["posForSign"];
    List<int> p1Sign = Dependencies().getPrivatePosition(finalPos, privateIntegerArray);
    //convert the list of int to string
  /*  StringBuffer p1SignString = new StringBuffer();
    for (int i = 0; i < p1Sign.length; i++) {
      p1SignString.write(p1Sign[i].toString());
    }*/
    String p1SignString = utf8.decode(p1Sign);
    return p1SignString.toString();


  }

}