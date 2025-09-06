import 'package:dotenv/dotenv.dart';
import 'package:xeno_canto_api_dart/src/models/xeno_canto_query.dart';
import 'package:xeno_canto_api_dart/xeno_canto_api_dart.dart';

void main() {
  final env = DotEnv(includePlatformEnvironment: true)..load();
  final apiClient = XenoCantoApi(key: env['XENO_CANTO_API_KEY']!);

  final query = XenoCantoQuery(sp: "parus major");
  apiClient.fetchRecordings(query).then((recordings) {
    print('Found ${recordings.numRecordings} recordings');
  });
}
