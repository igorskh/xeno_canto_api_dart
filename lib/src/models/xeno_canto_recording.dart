import 'enums.dart';
import 'xeno_canto_recording_osci.dart';
import 'xeno_canto_recording_sono.dart';

class XenoCantoRecording {
  /// the catalogue number of the recording on xeno-canto
  final String id;

  /// the generic name of the species
  final String gen;

  /// the specific name (epithet) of the species
  final String sp;

  /// the subspecies name (subspecific epithet)
  final String ssp;

  /// the group to which the species belongs (birds, grasshoppers, bats)
  final String grp;

  /// the English name of the species
  final String en;

  /// the name of the recordist
  final String rec;

  /// the country where the recording was made
  final String cnt;

  /// the name of the locality
  final String loc;

  /// the latitude of the recording in decimal coordinates
  final String? lat;

  /// the longitude of the recording in decimal coordinates
  final String? lon;

  /// the altitude of the recording location in meters
  final String? alt;

  /// the sound type of the recording (combining both predefined terms such as 'call' or 'song' and additional free text options)
  final String type;

  /// the sex of the animal
  final String sex;

  /// the life stage of the animal (adult, juvenile, etc.)
  final String stage;

  /// the recording method (field recording, in the hand, etc.)
  final String method;

  /// the URL specifying the details of this recording
  final String url;

  /// the URL to the audio file
  final String file;

  /// the original file name of the audio file
  final String fileName;

  /// an object with the urls to the four versions of sonograms
  final XenoCantoRecordingSono sono;

  /// an object with the urls to the three versions of oscillograms
  final XenoCantoRecordingOsci osci;

  /// the URL describing the license of this recording
  final String lic;

  /// the current quality rating for the recording
  final XenoCantoRecordingQuality q;

  /// the length of the recording in minutes
  final String length;

  /// the time of day that the recording was made
  final String? time;

  /// the date that the recording was made
  final String date;

  /// the date that the recording was uploaded to xeno-canto
  final String uploaded;

  /// an array with the identified background species in the recording
  final List<String>? also;

  /// additional remarks by the recordist
  final String? rmk;

  /// was the recorded animal seen?
  final String? animalSeen;

  /// was playback used to lure the animal?
  final String? playbackUsed;

  /// temperature during recording (applicable to specific groups only)
  final String? temp;

  /// registration number of specimen (when collected)
  final String? regnr;

  /// automatic (non-supervised) recording?
  final String? auto;

  /// recording device used
  final String? dvc;

  /// microphone used
  final String? mic;

  /// sample rate
  final String? smp;

  XenoCantoRecording({
    required this.id,
    required this.gen,
    required this.sp,
    required this.en,
    required this.ssp,
    required this.grp,
    required this.rec,
    required this.cnt,
    required this.loc,
    this.lat,
    this.lon,
    this.alt,
    required this.type,
    required this.sex,
    required this.stage,
    required this.method,
    required this.url,
    required this.file,
    required this.sono,
    required this.osci,
    required this.fileName,
    required this.lic,
    required this.q,
    required this.length,
    required this.date,
    this.time,
    required this.uploaded,
    this.also,
    this.rmk,
    required this.animalSeen,
    required this.playbackUsed,
    this.temp,
    this.regnr,
    this.auto,
    this.dvc,
    this.mic,
    this.smp,
  });

  factory XenoCantoRecording.fromJson(Map<String, dynamic> json) {
    return XenoCantoRecording(
      id: json['id'],
      gen: json['gen'],
      sp: json['sp'],
      ssp: json['ssp'],
      grp: json['grp'],
      en: json['en'],
      rec: json['rec'],
      cnt: json['cnt'],
      loc: json['loc'],
      lat: json['lat'],
      lon: json['lon'],
      alt: json['alt'],
      type: json['type'],
      sex: json['sex'],
      stage: json['stage'],
      method: json['method'],
      url: json['url'],
      file: json['file'],
      sono: XenoCantoRecordingSono.fromJson(json['sono']),
      osci: XenoCantoRecordingOsci.fromJson(json['osci']),
      fileName: json['file-name'],
      lic: json['lic'],
      q: XenoCantoRecordingQualityExtension.fromName(json['q']),
      length: json['length'],
      date: json['date'],
      time: json['time'],
      uploaded: json['uploaded'],
      also: List<String>.from(json['also']),
      animalSeen: json['animal-seen'],
      playbackUsed: json['playback-used'],
      temp: json['temp'],
      regnr: json['regnr'],
      auto: json['auto'],
      dvc: json['dvc'],
      mic: json['mic'],
      smp: json['smp'],
      rmk: json['rmk'],
    );
  }

  Map<String, dynamic> toJson(XenoCantoRecording object) {
    return {
      'id': object.id,
      'gen': object.gen,
      'sp': object.sp,
      'ssp': object.ssp,
      'grp': object.grp,
      'en': object.en,
      'rec': object.rec,
      'cnt': object.cnt,
      'loc': object.loc,
      'lat': object.lat,
      'lon': object.lon,
      'alt': object.alt,
      'type': object.type,
      'sex': object.sex,
      'stage': object.stage,  
      'method': object.method,
      'url': object.url,
      'file': object.file,
      'sono': object.sono.toJson(),
      'osci': object.osci.toJson(),
      'file-name': object.fileName,
      'lic': object.lic,
      'q': object.q.jsonValue, 
      'length': object.length,
      'date': object.date,
      'time': object.time,
      'uploaded': object.uploaded,
      'also': object.also,
      'animal-seen': object.animalSeen,
      'playback-used': object.playbackUsed,
      'temp': object.temp,
      'regnr': object.regnr,
      'auto': object.auto,
      'dvc': object.dvc,
      'mic': object.mic,
      'smp': object.smp,
      'rmk': object.rmk,
    };
  }
}
