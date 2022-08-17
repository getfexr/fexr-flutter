import 'dart:convert';

import 'package:path_provider/path_provider.dart';
import 'package:sha3/sha3.dart';

import 'package:fexr/sync-v1/signature/dependencies.dart';

class GenerateSign {
 Future<List<int>> genSignFromShares(String imagePath, String hash) async{
    Future<String> firstPrivatebin = Dependencies().imageToBinary(imagePath);
    String firstPrivate = await firstPrivatebin;
    
  
    List<String> privateIntegerArrayString = List<String>.generate(firstPrivate.length, (index) => firstPrivate[index]);
    
  
     List<int> privateIntegerArray = privateIntegerArrayString.map((index) => int.parse(index)).toList();
     
    Map P = Dependencies().randomPositions("signer", hash, 32, privateIntegerArray);
    
    var finalPos = P["posForSign"];
    
    List<int> p1Sign = Dependencies().getPrivatePosition(finalPos, privateIntegerArray);
   

   return p1Sign;



  }

  Future<String> sign(String detailsString) async {
    String hash;
    var details = json.decode(detailsString);
    String decentralizedID = details['did'];
    String path = (await getApplicationSupportDirectory()).path;
  //  String path = '/storage/emulated/0/Download';
    String pvtSharePath = '$path/Encrypted/Temp/PrivateShare.png';

   
    hash = Dependencies().calculateHash(detailsString);
    Future<String> firstPrivatebin = Dependencies().imageToBinary(pvtSharePath);
    String firstPrivate = await firstPrivatebin;
    List<int> privateIntegerArray = firstPrivate.split('').map(int.parse).toList();
    var P = Dependencies().randomPositions("signer", hash, 32, privateIntegerArray);
    List<int> finalPos = P["posForSign"];
    List<int> p1Sign = Dependencies().getPrivatePosition(finalPos, privateIntegerArray);
   
    return p1Sign.join("");


  }

}