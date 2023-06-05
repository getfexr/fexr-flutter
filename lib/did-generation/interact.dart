import 'package:fexr/did-generation/prop_image.dart';
import 'package:fexr/did-generation/secret_share.dart';
import 'package:image/image.dart' as image_lib;
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class RubixInteract {
  static var secret;
  static var candidateArray;

  static String bits = "";
  static String privateShare = "";
  static String candidateShare = "";
  static image_lib.Image privateImage = image_lib.Image(1024, 512);
  static image_lib.Image walletImage = image_lib.Image(1024, 512);

  RubixInteract(String InputSecret) {
    bits = InputSecret;
  }

  static Future<bool> createShare() {
    secret = List.generate(bits.length, (i) => List.generate(8, (j) => 0));

    candidateArray =
        List.generate(bits.length, (i) => List.generate(8, (j) => 0));

    SecretShare share = SecretShare(0);
    StringBuffer cnd = StringBuffer();
    StringBuffer pvt = StringBuffer();

    for (int i = 0; i < bits.length; i++) {
      if (bits.substring(i, i + 1) == '0') {
        share = SecretShare(0);
        share.starts();
        for (int j = 0; j < 8; j++) {
          secret[i][j] = SecretShare.s0[j];

          candidateArray[i][j] = SecretShare.y1[j];

          pvt.write(SecretShare.s0[j].toString());
          cnd.write(SecretShare.y1[j].toString());
        }
      }
      if (bits.substring(i, i + 1) == '1') {
        share = SecretShare(1);
        share.starts();

        for (int j = 0; j < 8; j++) {
          secret[i][j] = SecretShare.s0[j];

          candidateArray[i][j] = SecretShare.y1[j];

          pvt.write(SecretShare.s0[j].toString());
          cnd.write(SecretShare.y1[j].toString());
        }
      }
    }

    privateShare = pvt.toString();

    candidateShare = cnd.toString();
    return checkShare();
  }

  static Future<bool> checkShare() async {
    int sum;
    bool verified = true;

    for (int i = 0; i < secret.length; i++) {
      sum = 0;
      for (int j = 0; j < secret[i].length; j++) {
        sum = (sum + secret[i][j] * candidateArray[i][j]).toInt();
      }

      sum = sum % 2;

      if (sum != int.parse(bits.substring(i, i + 1), radix: 2)) {
        verified = false;
      }
    }

    if (verified == true) {
      print("Share Verified");
      privateImage = PropImage().generateRGB(privateShare, 1024, 512);
      String path = (await getApplicationSupportDirectory()).path;
      String filePath = '$path/Encrypted/Temp/PrivateShare.png';
      var png = image_lib.encodePng(privateImage);
      File(filePath).writeAsBytesSync(png);

      walletImage = PropImage().generateRGB(candidateShare, 1024, 512);
      String filePath_1 = '$path/Encrypted/Temp/PublicShare.png';
      var png1 = image_lib.encodePng(walletImage);
      File(filePath_1).writeAsBytesSync(png1);
    }    
    return verified;
  }
}
