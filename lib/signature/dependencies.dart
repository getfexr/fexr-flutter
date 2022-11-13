import 'package:sha3/sha3.dart';
import 'dart:convert';
import 'package:convert/convert.dart';
import 'package:image/image.dart' as image_lib;
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;

class Dependencies {
  Future<String> imageToBinary(String imagePath) async {
    var imageBytes = null;

    if (imagePath.contains('assets')) {
      var bytes = await rootBundle.load(imagePath);

      imageBytes = bytes.buffer.asUint8List();
    } else {
      imageBytes = File(imagePath).readAsBytesSync();
    }

    List<String> colors = [];
    image_lib.Image? image = image_lib.PngDecoder().decodeImage(imageBytes);
    if (image == null) {
      print('Image is null');
    }

    int? width = image?.width;
    int? height = image?.height;

    for (int i = 0; i < height!; i++) {
      for (int j = 0; j < width!; j++) {
        int? pixel = image?.getPixel(j, i);
        var color = pixel?.toInt() ?? 0;
        int red = image_lib.getRed(color);
        int green = image_lib.getGreen(color);
        int blue = image_lib.getBlue(color);
        // int alpha = image_lib.getAlpha(color); //Alpha part has been commented out, because of the conclusion that in Java Alpha part is not used.
        colors.add(intToBinary(red));
        colors.add(intToBinary(green));
        colors.add(intToBinary(blue));
     // colors.add(alpha.toRadixString(2));
      }
    }

    String imgBin = colors.toString();

    imgBin = imgBin.replaceAll(",", "");
    imgBin = imgBin.replaceAll("[", "");
    imgBin = imgBin.replaceAll("]", "");
    imgBin = imgBin.replaceAll(" ", "");

    return imgBin;
  }

  Map randomPositions(
      String role, String hash, int numberOfPositions, List<int> pvt1) {
    int u = 0, l = 0, m = 0;
    var hashCharacters =
        new List<int>.generate(32, (index) => 0, growable: false);
    var randomPositions =
        new List<int>.generate(32, (index) => 0, growable: false);
    var randPos = new List<int>.generate(256, (index) => 0, growable: false);
    var originalPos = new List<int>.generate(32, (index) => 0, growable: false);
    List<int> posForSign = new List<int>.generate(32 * 8, (index) => 0);
    for (int k = 0; k < numberOfPositions; k++) {
      String hashVar = hash.substring(k, k + 1);
      hashCharacters[k] = int.parse(hashVar, radix: 16);
      randomPositions[k] = (((2402 + hashCharacters[k]) * 2709) +
              ((k + 2709) + hashCharacters[(k)])) %
          2048;
      originalPos[k] = ((randomPositions[k] ~/ 8) * 8);
      var pos = new List<int>.generate(32, (index) => 0, growable: false);
      pos[k] = originalPos[k];
      randPos[k] = pos[k];
      var finalPositions =
          new List<int>.generate(8, (index) => 0, growable: false);
      for (int p = 0; p < 8; p++) {
        posForSign[u] = randPos[k];
        randPos[k]++;
        u++;
        finalPositions[l] = pos[k];
        pos[k]++;
        l++;
        if (l == 8) {
          l = 0;
        }
      }

      if (role == "signer") {
        List<int> p1 = new List<int>.generate(8, (index) => 0, growable: false);
        p1 = getPrivatePosition(finalPositions, pvt1);

        hash = Dependencies()
            .calculateHash((hash) + intArrayToStr(originalPos) + p1.join());
      } else {
        List<int> p1 = new List<int>.generate(8, (index) => 0, growable: false);
        for (int i = 0; i < 8; i++) {
          p1[i] = pvt1[m];
          m++;
        }

        hash = Dependencies()
            .calculateHash((hash) + intArrayToStr(originalPos) + p1.join());
      }
    }

    Map<String, List<int>> resultObject = {
      "originalPos": originalPos,
      "posForSign": posForSign,
    };

    return resultObject;
  }

  String intToBinary(int pixel) {
    String binary = pixel.toRadixString(2);
    while (binary.length < 8) {
      binary = "0" + binary;
    }
    return binary;
  }

  String intArrayToStr(List<int> inputArray) {
    StringBuffer outputString = new StringBuffer();
    for (int i in inputArray) {
      if (i == 1) {
        outputString.write("1");
      } else {
        outputString.write("0");
      }
    }
    return outputString.toString();
  }

  String calculateHash(String hashValues) {
    String hash;
    List<int> hashList;
    var k = SHA3(256, SHA3_PADDING, 256);
    k.update(utf8.encode(hashValues));
    hashList = k.digest();
    hash = hex.encode(hashList);
    return hash;
  }

  List<int> getPrivatePosition(List<int> positions, List<int> privateArray) {
    List<int> privatePosition =
        new List<int>.generate(positions.length, (index) => 0, growable: false);

    for (int k = 0; k < positions.length; k++) {
      int a = positions[k];

      int b = privateArray[a];

      privatePosition[k] = b;
    }

    return privatePosition;
  }

  String getPos(String s1, String s2) {
    int i, j, temp, temp1, sum;
    String sub1, sub2;
    if (s1.length != s2.length || s1.isEmpty) {
      return "";
    }
    StringBuffer tempo = new StringBuffer();
    for (i = 0; i < s1.length; i = i + 8) {
      sum = 0;
      for (j = i; j < i + 8; j++) {
        sub1 = s1.substring(j, j + 1);
        temp = int.parse(sub1);
        sub2 = s2.substring(j, j + 1);
        temp1 = int.parse(sub2);
        sum = sum + (temp * temp1);
      }
      sum = sum % 2;
      tempo.write(sum.toString());
    }
    return tempo.toString();
  }
  Future<String> imageToBase64(String imagePath) async {
    File file = File(imagePath);
    List<int> imageBytes = await file.readAsBytes();
    String base64Image = base64Encode(imageBytes);
    return base64Image;
  }

  //function to convert base64 string to image
  Future<File> base64ToImage(String base64Image, String path) async {
    File file = File(path);
    await file.writeAsBytes(base64Decode(base64Image));
    return file;
  }

  List<int> binaryToDecimal(String s) {
    List<int> binaryList = List.empty();
    binaryList = binaryList.toList();
    for (int i = 0; i < s.length; i += 8) {
      String bin = s.substring(i, i + 8);
      int code = int.parse(bin, radix: 2);
      binaryList.add(code);
    }
    return binaryList;
  }

  Future<String> privatePositions(String imagePath) async {
    Future<String> firstPrivate = Dependencies().imageToBinary(imagePath);
    String firstPrivateStr = await firstPrivate;
    List<int> privateIntegerArray = Dependencies().binaryToDecimal(firstPrivateStr);
  //  List<String> position = List.empty();
    String positions = "";
    for (int j = 0; j < privateIntegerArray.length; j += 49152){
      positions += firstPrivateStr.substring(j,j+1);
    }
    return positions;
    }

}
