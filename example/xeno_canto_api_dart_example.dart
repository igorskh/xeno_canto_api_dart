import 'package:dotenv/dotenv.dart';
import 'package:xeno_canto_api_dart/xeno_canto_api_dart.dart';

void main() {
  final env = DotEnv(includePlatformEnvironment: true)..load();
  final apiClient = XenoCantoApi(key: env['XENO_CANTO_API_KEY']!);

  final query = XenoCantoQuery(sp: "parus major");
  apiClient.fetchRecordings(query, perPage: 50).then((recordings) {
    print('Found ${recordings.numRecordings} recordings');

    for (var rec in recordings.recordings) {
      print(
          '${rec.gen} ${rec.sp} (${rec.en}) - ${rec.file} [${rec.length}]');
    }
  });
}
