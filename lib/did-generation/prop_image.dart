import 'package:image/image.dart' as image_lib;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:typed_data';
import 'dart:io';
import 'package:fexr/did-generation/dependencies.dart';

class PropImage {
  Future<String> imageToBinary(String imagePath) async {
    Uint8List imageBytes;
    ByteData bytes = ByteData(0);
    if (imagePath.contains('assets')) {
      bytes = await rootBundle.load(imagePath);
      imageBytes = bytes.buffer.asUint8List();
    } else {
      imageBytes = File(imagePath).readAsBytesSync();
    }
    //  ByteData bytes = await rootBundle.load(Path);

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
        //    int alpha = image_lib.getAlpha(color);

        colors.add(Dependencies().intToBinary(red));
        colors.add(Dependencies().intToBinary(green));
        colors.add(Dependencies().intToBinary(blue));
        //    colors.add(alpha.toRadixString(2));
      }
    }

    // remove "," and "[" and "]" from the colors list
    String imgBin = colors.toString();

    imgBin = imgBin.replaceAll(",", "");
    imgBin = imgBin.replaceAll("[", "");
    imgBin = imgBin.replaceAll("]", "");
    imgBin = imgBin.replaceAll(" ", "");

    return imgBin;
  }

  image_lib.Image generateRGB(String result, int width, int height) {
    List<int> binaryList = Dependencies().binaryToDecimal(result);
    int properLength = binaryList.length;

    if (properLength != width * height * 3) {
      throw Exception("Error: Invalid info length for Address image");
    } else {
      image_lib.Image image = image_lib.Image(width, height);

      //Portion which is slightly different from java code

      int a = 255, q = 0, r = 0, g = 0, b = 0;
      for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
          r = binaryList[q];
          g = binaryList[q + 1];
          b = binaryList[q + 2];
          q = q + 3;
          image.setPixelRgba(j, i, r, g, b, a);
        }
      }
      return image;
    }
  }
  Future<String> privatePositions(String imagePath) async {
    Future<String> firstPrivate = PropImage().imageToBinary(imagePath);
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
