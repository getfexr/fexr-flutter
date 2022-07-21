// store keys in CA, Client and Key files as format <DID>-CA.pem as key and RSA key as value in secure storage.
// Write Key file into .pem format and make it available for download for the client
import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:elliptic/elliptic.dart';
import 'package:pem/pem.dart';
import 'package:share_plus/share_plus.dart';

Future<void> genProxyCertificate(String dID) async {
  String path = (await getApplicationSupportDirectory()).path;

  var ec = getSecp256k1();
  var priv = ec.generatePrivateKey();
  var pub = priv.publicKey;

  final String pubKeyFileName = '$path/$dID.pem';
  final File pubKeyFile = File(pubKeyFileName);
  var base64PubKey = base64.encode(utf8.encode(pub.toString()));
  // String publicKeyPem = PemCodec(PemLabel.publicKey).encode(pub);

  await pubKeyFile.writeAsBytes(utf8.encode(pub.toString()), flush: true);

  final String privateKeyFileName = '$path/$dID.pem';
  final File privateKeyFile = File(privateKeyFileName);
  var base64PrivKey = base64.encode(utf8.encode(priv.toString()));

  String privateKeyPem = PemCodec(PemLabel.privateKey)
      .encode(utf8.encode(base64PrivKey.toString()));

  await privateKeyFile.writeAsBytes(utf8.encode(privateKeyPem.toString()),
      flush: true);

  await Share.shareFiles([privateKeyFileName]);
}

Future<bool> authProxyCertificate(String dID) async {
  // call web3walletPermissionRequest and see if the certificate is properly added by doing a dummy connection.
  return true;
}
