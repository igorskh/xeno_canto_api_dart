import 'dart:io';

import 'package:mockito/mockito.dart';
import 'package:xeno_canto_api_dart/xeno_canto_api_dart.dart';
import 'package:test/test.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;

import 'xeno_canto_api_dart_mock_test.mocks.dart';

Future<String> readJSONFromFile(String path) async {
  return File(path).readAsString();
}

@GenerateMocks([http.Client])
void main() {
  group('Test fetching recordings with mocks', () {
    test('Get recordings', () async {
      final client = MockClient();

      final sampleResponse = await readJSONFromFile('test/snapshots/response_sylviidae_snapshot.json');

      when(
        client.get(
          Uri.parse(
            'https://xeno-canto.org/api/3/recordings?query=grp:"birds"+fam:"Sylviidae"&page=1&per_page=50&key=test',
          ),
        ),
      ).thenAnswer(
        (_) async => http.Response(
          sampleResponse,
          200,
          headers: {'content-type': 'application/json; charset=utf-8'},
        ),
      );

      var apiClient = XenoCantoApi(httpClient: client, key: 'test');
      final query = XenoCantoQuery(fam: "Sylviidae", grp: XenoCantoGroup.birds);

      final recordings = await apiClient.fetchRecordings(
        query,
        page: 1,
        perPage: 50,
      );
      print('Found ${recordings.numRecordings} recordings');
      expect(recordings.recordings.length, equals(50));
      
      expect(recordings.recordings.first.id, equals("1043829"));
      expect(recordings.recordings.last.id, equals("1000740"));

    });
  });
}
