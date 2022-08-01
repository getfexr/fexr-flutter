import 'package:sha3/sha3.dart';
import 'dart:convert';
import 'dart:js_util';
import 'package:image/image.dart' as image_lib;
import 'dart:typed_data';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;


class Dependencies {


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
    int xChunk = width!;
    int yChunk = height!;

    for (int j = 0; j < width; j++) {
      for (int i = 0; i < height; i++) {
        int? pixel = image?.getPixel(j, i);
        var color = pixel?.toInt() ?? 0;
        int red = image_lib.getRed(color);
        int green = image_lib.getGreen(color);
        int blue = image_lib.getBlue(color);
        int alpha = image_lib.getAlpha(color);

        colors.add(red.toRadixString(2));
        colors.add(green.toRadixString(2));
        colors.add(blue.toRadixString(2));
        colors.add(alpha.toRadixString(2));
      }
    }

    // remove "," and "[" and "]" from the colors list
    String imgBin = colors.toString();

    imgBin = imgBin.replaceAll(",", "");
    imgBin = imgBin.replaceAll("[", "");
    imgBin = imgBin.replaceAll("]", "");
    imgBin = imgBin.replaceAll(" ", "");

   // print("imgBin len: ${imgBin.length}");
  //  print(imgBin);
    return imgBin;
  }
  JsonCodec randomPositions(String role, String hash, int numberOfPositions, List<int> pvt1){
    int u = 0, l = 0, m = 0;
    List<int> hashCharacters = [256];
    List<int> randomPositions = [32];
    List<int> randPos = [256];
    List<int> finalPositions, pos;
    List<int> originalPos = [32];
    List<int> posForSign = [32 * 8];
    for (int k = 0; k < numberOfPositions; k++){
      hashCharacters[k] = hash.codeUnitAt(k);
      randomPositions[k] = (((2402 + hashCharacters[k]) * 2709) + ((k + 2709) + hashCharacters[(k)])) % 2048;
      originalPos[k] = ((randomPositions[k] ~/ 8) * 8);

      pos = [32];
      pos[k] = originalPos[k];
      randPos[k] = pos[k];
      finalPositions = [8];
      for (int p = 0; p < 8; p++){
        posForSign[u] = randPos[k];
                randPos[k]++;
                u++;

                finalPositions[l] = pos[k];
                pos[k]++;
                l++;
                if (l == 8)
                    l = 0;
              }
              if (role == "signer"){
                List<int> p1 = getPrivatePosition(finalPositions, pvt1);
                var k = SHA3(256, KECCAK_PADDING, 256);
                k.update(utf8.encode(hash + utf8.decode(originalPos) + utf8.decode(p1)));
                hash = k.digest().toString();
               
              }else {
                List<int> p1 = [8];
                for (int i = 0; i < 8; i++) {
                    p1[i] = pvt1[m];
                    m++;
                }
                var k = SHA3(256, KECCAK_PADDING, 256);
                k.update(utf8.encode(hash + utf8.decode(originalPos) + utf8.decode(p1)));
                hash = k.digest().toString();


              }

      
    }
    JsonCodec resultObject = newObject();
    //write values to the object
    resultObject.encode({"originalPos", originalPos});
    resultObject.encode({"posForSign", posForSign});
    return resultObject;

    
  }
  List<int> getPrivatePosition(List<int> positions, List<int> privateArray){
    List<int> privatePosition = [positions.length];
    for (int k = 0; k < positions.length; k++){
      int a = positions[k];
      int b = privateArray[a];
      privatePosition[k] = b;
    }
    return privatePosition;
  }

  String getPos(String s1, String s2){
    int i,j,temp,temp1,sum;
    String sub1,sub2;
    if(s1.length != s2.length || s1.length < 1){
      return "";
    }
    StringBuffer tempo = new StringBuffer();
    for(i=0;i<s1.length;i += 8){
      sum = 0;
      for(j=i;j<i+8;j++){
        sub1 = s1.substring(j,j+1);
        temp = int.parse(sub1);
        sub2 = s2.substring(j,j+1);
        temp1 = int.parse(sub2);
        sum = sum + (temp * temp1);
      }
      sum = sum % 2;
      tempo.write(sum.toString());
    }
    return tempo.toString();
  }


}
 
