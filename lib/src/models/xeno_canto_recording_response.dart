import 'xeno_canto_recording.dart';

class XenoCantoRecordingsResponse {
  final String numRecordings;
  final String numSpecies;
  final int page;
  final int numPages;
  final List<XenoCantoRecording> recordings;

  XenoCantoRecordingsResponse({
    required this.numRecordings,
    required this.numSpecies,
    required this.page,
    required this.numPages,
    required this.recordings,
  });

  factory XenoCantoRecordingsResponse.fromJson(Map<String, dynamic> json) {
    var recordingsJson = json['recordings'] as List;
    List<XenoCantoRecording> recordingsList = recordingsJson
        .map((recordingJson) => XenoCantoRecording.fromJson(recordingJson))
        .toList();

    return XenoCantoRecordingsResponse(
      numRecordings: json['numRecordings'],
      numSpecies: json['numSpecies'],
      page: json['page'],
      numPages: json['numPages'],
      recordings: recordingsList,
    );
  }
}
