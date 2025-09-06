import 'dart:convert';

import 'package:http/http.dart' as http;

import 'models/xeno_canto_error.dart';
import 'models/xeno_canto_query.dart';
import 'models/xeno_canto_recording_response.dart';

class XenoCantoApi {
  static const String defaultBaseUrl =
      'https://xeno-canto.org/api/3/recordings';

  final String baseUrl;
  final String key;

  XenoCantoApi({this.baseUrl = defaultBaseUrl, this.key = ''});

  static XenoCantoError _decodeError(http.Response response) {
    try {
      final jsonResponse = json.decode(response.body);
      final error = XenoCantoError.fromJson(jsonResponse);
      return error;
    } catch (e) {
      return XenoCantoError(
        message: 'Unexpected error',
        error: '${response.body} [${response.statusCode}]',
      );
    }
  }

  Future<XenoCantoRecordingsResponse> fetchRecordings(
    XenoCantoQuery query, {
    int page = 1,
    int perPage = 100,
  }) async {
    var urlString =
        '$baseUrl?query=${query.asQueryString()}&page=$page&per_page=$perPage';

    if (key.isNotEmpty) {
      urlString += '&key=$key';
    }

    final url = Uri.parse(urlString);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      return XenoCantoRecordingsResponse.fromJson(jsonResponse);
    } else {
      throw XenoCantoApi._decodeError(response);
    }
  }
}
