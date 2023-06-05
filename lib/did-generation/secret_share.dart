import 'dart:math';
import 'package:fexr/did-generation/address_constant.dart';

class SecretShare {
  static var x1 = List<int>.generate(4, (index) => 0, growable: false);
  static var alpha1 = List<int>.generate(8, (index) => 0, growable: false);
  static var y1 = List<int>.generate(8, (index) => 0, growable: false);
  static var s0;
  static int s = 0;
  int ctr_2 = 0;
  SecretShare(int n) {
    s = n;
  }

  List<int> multiplyMatrices(
      List<int> firstMatrix, List<dynamic> secondMatrix, int c1, int c2) {
    var product = List<int>.generate(c2, (index) => 0, growable: false);

    int sums = 0;
    for (int i = 0; i < c2; i++) {
      for (int j = 0; j < c1; j++) {
        sums = (sums + (secondMatrix[j][i] * firstMatrix[j])).toInt();
      }

      product[i] = sums;
      sums = 0;
    }

    return product;
  }

  void starts() {
    x1 = generateArray(AddressConstant().V4, 4);
    alpha1 = generateArray(AddressConstant().LA, 8);
    y1 = generateArray(AddressConstant().V8, 8);
    List<int> tempMat = multiplyMatrices(x1, AddressConstant().G, 4, 8);
    s0 = List<int>.generate(tempMat.length, (j) => 0, growable: false);
    for (int i = 0; i < alpha1.length; i++) {
      s0[i] = (tempMat[i] + alpha1[i]) % 2;
    }
    y1 = checkComply(y1, s0);
  }

  List<int> checkComply(List<int> cand, List<int> s0) {
    int sum = 5; //5
    while (sum > s) {
      sum = 0;
      for (int i = 0; i < cand.length; i++) {
        sum = sum + (cand[i] * s0[i]);
        sum = sum % 2;
      }

      if (sum != s) {
        cand = generateArray(AddressConstant().V8, 8);
        cand = checkComply(cand, s0);
      }
    }
    return cand;
  }

  List<int> generateArray(List<dynamic> arrays, int size) {
    int r = generateRandomNumber(arrays.length);
    List<int> temp = List<int>.generate(size, (index) => 0, growable: false);
    for (int j = 0; j < size; j++) {
      temp[j] = arrays[r][j];
    }
    return temp;
  }

  int generateRandomNumber(int length) {
    int randomNumber = Random().nextInt(length);
    return randomNumber;
  }
}
