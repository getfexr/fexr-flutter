import 'dart:isolate';

import 'package:path_provider/path_provider.dart';
import 'package:fexr/signature/dependencies.dart';
import 'dart:typed_data';

class SignInput {
  String imagePath;
  String hash;
  SignInput({required this.imagePath, required this.hash});
}

Future<void> genSignFromSharesIsolate(List<dynamic> args) async{
    var sendPort = args[0] as SendPort;
    var input = args[1] as SignInput;
    var hash = input.hash;
    var imagePath = input.imagePath;
    Future<String> firstPrivatebin = Dependencies().imageToBinary(imagePath);
    String firstPrivate = await firstPrivatebin;
    List<String> privateIntegerArrayString = List<String>.generate(firstPrivate.length, (index) => firstPrivate[index]);
    List<int> privateIntegerArray = privateIntegerArrayString.map((index) => int.parse(index)).toList();
    Map P = Dependencies().randomPositions("signer", hash, 32, privateIntegerArray);
    var finalPos = P["posForSign"];
    List<int> p1Sign = Dependencies().getPrivatePosition(finalPos, privateIntegerArray);
    String signString = p1Sign.join("");
    Uint8List p1SignBytes = bitstreamToBytes(signString);
    sendPort.send(p1SignBytes);
}

Uint8List bitstreamToBytes(String stream) {
  var result = <int>[];
  var str = stream;

  while (str.isNotEmpty) {
    var l = 0;
    if (str.length > 8) {
      l = str.length - 8;
    }
    var temp = int.parse(str.substring(l), radix: 2);
    result.insert(0, temp);
    if (l == 0) {
      break;
    } else {
      str = str.substring(0, l);
    }
  }

  return Uint8List.fromList(result);
}



class GenerateSign {
    Future<Uint8List> genSignFromShares(String imagePath, String hash) async {
    final response = ReceivePort();
    await Isolate.spawn(genSignFromSharesIsolate,[response.sendPort,SignInput(imagePath: imagePath, hash: hash)]);
    final result = await response.first;
    return result;
}

  Future<String> sign(String detailsString) async {
    String hash;
   // var details = json.decode(detailsString);
  //  String decentralizedID = details['did'];
    String path = (await getApplicationSupportDirectory()).path;
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