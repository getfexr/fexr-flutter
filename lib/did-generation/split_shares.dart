import 'package:fexr/did-generation/interact.dart';
import 'package:fexr/did-generation/prop_image.dart';

class RubixSplitShares {
  static Future<bool> generateShares(String filePath) async {
    Future<String> content = PropImage().imageToBinary(filePath);
    String contentBin = await content;

    RubixInteract interact = RubixInteract(contentBin);
    return RubixInteract.createShare();
  }
}
