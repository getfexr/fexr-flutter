import 'dart:math';
import 'dart:typed_data';

import 'package:basic_utils/basic_utils.dart' as basic_utils;
import 'package:pointycastle/pointycastle.dart';
import 'package:pointycastle/export.dart';

class KeyPair {
  late ECPublicKey publicKey;
  late ECPrivateKey privateKey;
  KeyPair() {
    var keyPair = basic_utils.CryptoUtils.generateEcKeyPair();
    publicKey = keyPair.publicKey as ECPublicKey;
    privateKey = keyPair.privateKey as ECPrivateKey;
  }

  KeyPair.fromPem(String publicKeyPem, String privateKeyPem) {
    publicKey = basic_utils.CryptoUtils.ecPublicKeyFromPem(publicKeyPem);
    privateKey = basic_utils.CryptoUtils.ecPrivateKeyFromPem(privateKeyPem);
  }

  String getPemEncodedPublicKey() {
    return basic_utils.CryptoUtils.encodeEcPublicKeyToPem(publicKey);
  }

  String getPemEncodedPrivateKey() {
    return basic_utils.CryptoUtils.encodeEcPrivateKeyToPem(privateKey);
  }

   Uint8List keySignature(Uint8List signContent, ECPrivateKey privateKey) {
    var secureRandom = getSecureRandom();
    final signer = ECDSASigner()
      ..init(
        true,
        ParametersWithRandom(
          PrivateKeyParameter(privateKey),
          secureRandom,
        ),
      );
    var signature = signer.generateSignature(signContent) as ECSignature;
    final encodedSignature = ASN1Sequence(elements: [
      ASN1Integer(signature.r),
      ASN1Integer(signature.s),
    ]).encode();
    return encodedSignature;
  }

  SecureRandom getSecureRandom() {
    var secureRandom = FortunaRandom();
    var random = Random.secure();
    var seeds = <int>[];
    for (var i = 0; i < 32; i++) {
      seeds.add(random.nextInt(255));
    }
    secureRandom.seed(KeyParameter(Uint8List.fromList(seeds)));
    return secureRandom;
  }

}
