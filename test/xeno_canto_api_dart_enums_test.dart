import 'package:xeno_canto_api_dart/xeno_canto_api_dart.dart';
import 'package:test/test.dart';

void main() {
  group('Test string to types conversions', () {
    test('XenoCantoType fromName', () {
      List<XenoCantoType> types = XenoCantoTypeExtension.fromEnumString('call, flight call');

      expect(types.length, equals(2));
      expect(types, equals([XenoCantoType.call, XenoCantoType.flightCall]));
    });
    test('XenoCantoType fromName with unknown type', () {
      List<XenoCantoType> types = XenoCantoTypeExtension.fromEnumString('call, long call');

      expect(types.length, equals(2));
      expect(types, equals([XenoCantoType.call, XenoCantoType.unknown]));
    });
  });
}
