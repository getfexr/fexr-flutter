import 'package:flutter_test/flutter_test.dart';

import 'package:fexr/fexr.dart';
import 'package:fexr/sync-v1/pop/passport_service.dart';

class FexrTest {
  Future<void> mainTest() async {
    await PassportService().validatePermission("192.168.137.1", "abcd", 1);
  }
}
