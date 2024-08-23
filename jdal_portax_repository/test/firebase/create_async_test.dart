import 'package:test/test.dart';

dynamic Function() testGetByIdAsync() {
  return () {
    whenParamIsNotValid();
  };
}

void whenParamIsNotValid() {
  group('When param data is not valid', () {
    // Add your tests here
    test('Should throw argument exception', () async {
      // Test implementation here
    });
  });
}
