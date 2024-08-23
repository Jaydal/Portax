import 'package:test/test.dart';

import 'firebase/create_async_test.dart';

void main() {
  group("Firebase Repository Test", () {
    group('GetByIdAsync', testGetByIdAsync());
  });
}
