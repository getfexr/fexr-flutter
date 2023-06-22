import 'package:fexr/did-generation/dependencies.dart';
import 'package:fexr/did-generation/split_shares.dart' as split;
import 'package:fexr/did-generation/prop_image.dart';

import 'package:image/image.dart' as image_lib;
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class RubixDID {
  //Function which creates the DID image, Public Share and Private Share.
  static Future<bool> create(String passkey) async {
    String imagePath = 'assets/DID256x.png';
    Future<String> imgBin = PropImage().imageToBinary(imagePath);

    String imgBinStr = await imgBin;

    double c256 = imgBinStr.length / 256;

    int c = c256.floor();

    String val, sha = "";
    StringBuffer finalval = StringBuffer();
    for (int i = 0; i < c; i++) {
      sha = Dependencies().calculateHash(passkey);
      val = Dependencies().hexToBin(sha);
      finalval.write(val);

      passkey = sha;
    }
    String value = finalval.toString();

    StringBuffer imgFinalVal = StringBuffer();

    for (int i = 0; i < imgBinStr.length; i++) {
      String char = value.substring(i, i + 1);

      String imgChar = imgBinStr.substring(i, i + 1);

      int charVal = int.parse(char, radix: 2);

      int imgCharVal = int.parse(imgChar, radix: 2);

      int xorVal = charVal ^ imgCharVal;

      imgFinalVal.write(xorVal);
    }

    String result = imgFinalVal.toString();

    List<int> binaryList = List.empty();
    binaryList = binaryList.toList();

    image_lib.Image image = image_lib.Image(256, 256);
    image = PropImage().generateRGB(result, 256, 256);

    String path = (await getApplicationSupportDirectory()).path;
    String tempPath = '$path/Encrypted/Temp';
    if (await Directory(tempPath).exists()) {
      return true;
    }
    await Directory(tempPath).create(recursive: true);
    String addressImagePath = '$tempPath/Address.png';
    var png = image_lib.encodePng(image);
    File(addressImagePath).writeAsBytesSync(png);
    return split.RubixSplitShares.generateShares(addressImagePath);
  }
}
