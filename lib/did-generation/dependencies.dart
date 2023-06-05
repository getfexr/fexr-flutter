import 'package:sha3/sha3.dart';
import 'dart:convert';
import 'package:convert/convert.dart';
import 'dart:io';

class Dependencies {
  String intToBinary(int pixel) {
    String binary = pixel.toRadixString(2);
    while (binary.length < 8) {
      binary = "0" + binary;
    }
    return binary;
  }

  String calculateHash(String hashValues) {
    List<int> hashList;
    String hash;
    var k = SHA3(256, SHA3_PADDING, 256);
    k.update(utf8.encode(hashValues));
    hashList = k.digest();
    hash = hex.encode(hashList);
    return hash;
  }

  String hexToBin(String s) {
    int decimal;
    StringBuffer bin = StringBuffer();
    for (int i = 0; i < s.length; i++) {
      String hex = s.substring(i, i + 1);
      decimal = int.parse(hex, radix: 16);
      String binary = decimal.toRadixString(2);
      while (binary.length < 4) {
        binary = "0" + binary;
      }
      bin.write(binary);
    }
    return bin.toString();
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
}
