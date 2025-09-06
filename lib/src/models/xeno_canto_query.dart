import 'enums.dart';

class XenoCantoQuery {
  /// XC catalogue number
  final String? nr;

  /// Species
  final String? sp;

  /// Genus
  final String? gen;

  /// Group
  final XenoCantoGroup? grp;

  /// Subspecies
  final String? ssp;

  /// Family
  final String? fam;

  /// English name
  final String? en;

  /// Year of recording
  final String? year;

  /// Month of recording
  final String? month;

  /// allows you to search for recordings that have been uploaded since a certain date
  final String? since;

  /// Year for collection date currently grasshoppers only
  final String? colyear;

  /// Month for collection date currently grasshoppers only
  final String? colmonth;

  /// Type of sound
  final XenoCantoType? type;

  /// Other type
  final String? otherType;

  /// Sex of the animal
  final XenoCantoSex? sex;

  /// Stage of the animal
  final XenoCantoStage? stage;

  /// Quality
  final String? q;

  /// Length in seconds
  final String? len;

  /// Sample rate
  final String? smp;

  /// Area: africa, america, asia, australia, europe
  final XenoCantoArea? area;

  /// Country
  final String? cnt;

  /// Locality
  final String? loc;

  /// Latitude
  final String? lat;

  /// Longitude
  final String? lng;

  /// Bounding box
  final String? box;

  /// Recording method
  final XenoCantoRecordingMethod? method;

  /// Animal seen
  final XenoCantoBinaryOption? seen;

  /// Playback used
  final XenoCantoBinaryOption? playback;

  /// Recordist remarks
  final String? rmk;

  /// Recordist
  final String? rec;

  /// Temperature, currently also applies only to grasshoppers.
  final String? temp;

  /// Registration number
  final String? regnr;

  /// Automatic recording
  final XenoCantoBinaryOption? auto;

  /// Recording device
  final String? dvc;

  /// Microphone
  final String? mic;

  String asQueryString() {
    List<String> result = [];

    if (nr != null && nr!.isNotEmpty) result.add('nr:"$nr"');

    if (sp != null && sp!.isNotEmpty) result.add('sp:"$sp"');
    if (gen != null && gen!.isNotEmpty) result.add('gen:"$gen"');
    if (grp != null) result.add('grp:"${grp!.name}"');
    if (ssp != null && ssp!.isNotEmpty) result.add('ssp:"$ssp"');
    if (fam != null && fam!.isNotEmpty) result.add('fam:"$fam"');
    if (en != null && en!.isNotEmpty) result.add('en:"$en"');

    if (year != null && year!.isNotEmpty) result.add('year:"$year"');
    if (month != null && month!.isNotEmpty) result.add('month:"$month"');
    if (since != null && since!.isNotEmpty) result.add('since:"$since"');

    if (type != null) result.add('type:"${type!.name}"');
    if (otherType != null && otherType!.isNotEmpty) {
      result.add('otherType:"$otherType"');
    }
    if (sex != null) result.add('sex:"${sex!.name}"');
    if (stage != null) result.add('stage:"${stage!.name}"');

    if (q != null && q!.isNotEmpty) result.add('q:"$q"');
    if (len != null && len!.isNotEmpty) result.add('len:"$len"');
    if (smp != null && smp!.isNotEmpty) result.add('smp:"$smp"');

    if (area != null) result.add('area:"${area!.name}"');
    if (cnt != null && cnt!.isNotEmpty) result.add('cnt:"$cnt"');
    if (loc != null && loc!.isNotEmpty) result.add('loc:"$loc"');
    if (lat != null && lat!.isNotEmpty) result.add('lat:"$lat"');
    if (lng != null && lng!.isNotEmpty) result.add('lng:"$lng"');
    if (box != null && box!.isNotEmpty) result.add('box:"$box"');

    if (method != null) result.add('method:"${method!.name}"');

    if (seen != null) result.add('seen:"${seen!.name}"');
    if (playback != null) result.add('playback:"${playback!.name}"');

    if (rmk != null && rmk!.isNotEmpty) result.add('rmk:"$rmk"');

    if (rec != null && rec!.isNotEmpty) result.add('rec:"$rec"');

    if (temp != null && temp!.isNotEmpty) result.add('temp:"$temp"');

    if (regnr != null && regnr!.isNotEmpty) result.add('regnr:"$regnr"');
    if (auto != null) result.add('auto:"${auto!.name}"');
    if (colmonth != null && colmonth!.isNotEmpty) {
      result.add('colmonth:"$colmonth"');
    }
    if (colyear != null && colyear!.isNotEmpty) {
      result.add('colyear:"$colyear"');
    }
    if (dvc != null && dvc!.isNotEmpty) result.add('dvc:"$dvc"');
    if (mic != null && mic!.isNotEmpty) result.add('mic:"$mic"');

    return result.join('+');
  }

  XenoCantoQuery({
    this.nr,
    this.sp,
    this.gen,
    this.grp,
    this.ssp,
    this.fam,
    this.en,
    this.type,
    this.otherType,
    this.cnt,
    this.q,
    this.area,
    this.sex,
    this.stage,
    this.year,
    this.month,
    this.since,
    this.loc,
    this.lat,
    this.lng,
    this.box,
    this.len,
    this.smp,
    this.method,
    this.seen,
    this.playback,
    this.rmk,
    this.rec,
    this.temp,
    this.regnr,
    this.auto,
    this.colmonth,
    this.colyear,
    this.dvc,
    this.mic,
  });
}
