import 'dart:convert';
import 'package:path_provider/path_provider.dart';
import 'package:fexr/signature/dependencies.dart';



class AuthenticateSign{
  int verifyCount = 0;

  Future<bool> verifySignature(String detailString, String signature, String publicKey) async {
    verifyCount++;
    var detail = json.decode(detailString);
    String decentralizedID = detail["did"];
    String hash = detail["hash"];
    String signature = detail["signature"];
  // wallet id and did comparison and fetching part to be added.
  //also syncdatatable function is also there in the java code. These 2 must be added
  String path = (await getApplicationSupportDirectory()).path;
  String didPath = '$path/did.png';
  Future<String> senderDidbinary = Dependencies().imageToBinary(didPath);
  String senderDid = await senderDidbinary;
  String publicSharePath = '$path/publicShare.png';
  Future<String> walletIdbinary = Dependencies().imageToBinary(publicSharePath);
  String walletId = await walletIdbinary;

   List<int> senderSign = signature.split('').map(int.parse).toList();
   JsonCodec P = Dependencies().randomPositions("verifier", hash, 32, senderSign);
   var p1 = P.decode(P.toString());
   List<int> posForSign = p1["posForSign"];
   List<int> originalPos = p1["originalPos"];
   StringBuffer senderWalletID = new StringBuffer();
   for (int positionsLevelTwoTrail in posForSign) {
            senderWalletID.write(walletId.substring(positionsLevelTwoTrail, positionsLevelTwoTrail + 1));
        }
  String recombinedResult = Dependencies().getPos(senderWalletID.toString(), signature);
  List<int> positionsLevelZero = [32];
  for (int k = 0; k < 32; k++) {
    positionsLevelZero[k] = ((originalPos[k]) ~/ 8);
  }
  StringBuffer decentralizedIDForAuth = new StringBuffer();
  for (int value in positionsLevelZero) {
    decentralizedIDForAuth.write(senderDid.substring(value, value + 1));
  }
  if (recombinedResult == decentralizedIDForAuth.toString()) {
    print("Signature verified");
    return true;
  } else {
    print("Signature not verified");
    return false;
  }


}



}