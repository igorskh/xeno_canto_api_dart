import 'dart:io';

import 'package:dotenv/dotenv.dart';
import 'package:xeno_canto_api_dart/xeno_canto_api_dart.dart';
import 'package:test/test.dart';

void main() {
  group('Test fetching recordings', () {
    test('Get recordings', () async {
      var apiClient = XenoCantoApi();

      var env = DotEnv(includePlatformEnvironment: true);

      if (Platform.environment.containsKey('XENO_CANTO_API_KEY') == false) {
        env.load();
      }

      final query = XenoCantoQuery(fam: "Sylviidae", grp: XenoCantoGroup.birds);

      expect(
        () => apiClient.fetchRecordings(query),
        throwsA(isA<XenoCantoError>()),
      );

      apiClient = XenoCantoApi(key: env['XENO_CANTO_API_KEY']!);

      final recordings = await apiClient.fetchRecordings(
        query,
        page: 1,
        perPage: 50,
      );
      print('Found ${recordings.numRecordings} recordings');
      expect(recordings.recordings.length, equals(50));
    });
  });
}
