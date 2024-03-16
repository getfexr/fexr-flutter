import 'package:fexr/signature/dependencies.dart';
import 'package:path_provider/path_provider.dart';

class AuthenticateSign {
  Future<bool> verifySignature(List<int> detailString, String hash) async {
    var detail = detailString;

    List<int> signature = detail;
/*
 
   wallet id and did comparison and fetching part to be added.
   also syncdatatable function is also there in the java code. These 2 must be added
   String path = (await getApplicationSupportDirectory()).path; - Path to the folder where the files are stored when the did is generated from the wallet.

 */
    //String path = 'packages/fexr/assets';
    String path = (await getApplicationSupportDirectory()).path;

    String didPath = '$path/Encrypted/Temp/DID.png';

    Future<String> senderDidbinary = Dependencies().imageToBinary(didPath);
    String senderDid = await senderDidbinary;
    String publicSharePath = '$path/Encrypted/Temp/PublicShare.png';

    Future<String> walletIdbinary =
        Dependencies().imageToBinary(publicSharePath);
    String walletId = await walletIdbinary;

    var P = Dependencies().randomPositions("verifier", hash, 32, signature);

    List<int> posForSign = P["posForSign"];

    List<int> originalPos = P["originalPos"];

    StringBuffer senderWalletID = new StringBuffer();

    for (int positionsLevelTwoTrail in posForSign) {
      senderWalletID.write(walletId.substring(
          positionsLevelTwoTrail, positionsLevelTwoTrail + 1));
    }

    String recombinedResult =
        Dependencies().getPos(senderWalletID.toString(), signature.join());

    List<int> positionsLevelZero =
        new List<int>.generate(32, (index) => 0, growable: false);
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
