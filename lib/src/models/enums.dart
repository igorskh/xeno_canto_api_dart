enum XenoCantoRecordingQuality { A, B, C, D, E }

extension XenoCantoRecordingQualityExtension on XenoCantoRecordingQuality {
  String queryMoreThan() {
    return ">$name";
  }

  String queryLessThan() {
    return "<$name";
  }
}

enum XenoCantoBinaryOption { yes, no }

enum XenoCantoArea { africa, america, asia, australia, europe }

enum XenoCantoRecordingMethod {
  emergingFromRoost,
  fieldRecording,
  fluorescentLightTag,
  handRelease,
  inEnclosure,
  inNet,
  inTheHand,
  roosting,
  roped,
  studioRecording,
}

extension XenoCantoRecordingMethodExtension on XenoCantoRecordingMethod {
  XenoCantoRecordingMethod fromName(String name) {
    return XenoCantoRecordingMethod.values.firstWhere((e) => e.name == name);
  }

  String get name {
    switch (this) {
      case XenoCantoRecordingMethod.emergingFromRoost:
        return 'emerging from roost';
      case XenoCantoRecordingMethod.fieldRecording:
        return 'field recording';
      case XenoCantoRecordingMethod.fluorescentLightTag:
        return 'fluorescent light tag';
      case XenoCantoRecordingMethod.handRelease:
        return 'hand release';
      case XenoCantoRecordingMethod.inEnclosure:
        return 'in enclosure';
      case XenoCantoRecordingMethod.inNet:
        return 'in net';
      case XenoCantoRecordingMethod.inTheHand:
        return 'in the hand';
      case XenoCantoRecordingMethod.roosting:
        return 'roosting';
      case XenoCantoRecordingMethod.roped:
        return 'roped';
      case XenoCantoRecordingMethod.studioRecording:
        return 'studio recording';
    }
  }
}

enum XenoCantoSex { male, female }

enum XenoCantoStage { adult, juvenile, nestling, nymph, subadult }

enum XenoCantoType {
  aberrant,
  advertisementCall,
  agonisticCall,
  alarmCall,
  beggingCall,
  call,
  callingSong,
  courtshipSong,
  dawnSong,
  defensiveCall,
  distressCall,
  disturbanceSong,
  drumming,
  duet,
  echolocation,
  feedingBuzz,
  femaleSong,
  flightCall,
  flightSong,
  imitation,
  matingCall,
  mechanicalSound,
  nocturnalFlightCall,
  releaseCall,
  rivalrySong,
  searchingSong,
  socialCall,
  song,
  subsong,
  territorialCall,
}

extension XenoCantoTypeExtension on XenoCantoType {
  XenoCantoType fromName(String name) {
    return XenoCantoType.values.firstWhere((e) => e.name == name);
  }

  String get name {
    switch (this) {
      case XenoCantoType.aberrant:
        return 'aberrant';
      case XenoCantoType.advertisementCall:
        return 'advertisement call';
      case XenoCantoType.agonisticCall:
        return 'agonistic call';
      case XenoCantoType.alarmCall:
        return 'alarm call';
      case XenoCantoType.beggingCall:
        return 'begging call';
      case XenoCantoType.call:
        return 'call';
      case XenoCantoType.callingSong:
        return 'calling song';
      case XenoCantoType.courtshipSong:
        return 'courtship song';
      case XenoCantoType.dawnSong:
        return 'dawn song';
      case XenoCantoType.defensiveCall:
        return 'defensive call';
      case XenoCantoType.distressCall:
        return 'distress call';
      case XenoCantoType.disturbanceSong:
        return 'disturbance song';
      case XenoCantoType.drumming:
        return 'drumming';
      case XenoCantoType.duet:
        return 'duet';
      case XenoCantoType.echolocation:
        return 'echolocation';
      case XenoCantoType.feedingBuzz:
        return 'feeding buzz';
      case XenoCantoType.femaleSong:
        return 'female song';
      case XenoCantoType.flightCall:
        return 'flight call';
      case XenoCantoType.flightSong:
        return 'flight song';
      case XenoCantoType.imitation:
        return 'imitation';
      case XenoCantoType.matingCall:
        return 'mating call';
      case XenoCantoType.mechanicalSound:
        return 'mechanical sound';
      case XenoCantoType.nocturnalFlightCall:
        return 'nocturnal flight call';
      case XenoCantoType.releaseCall:
        return 'release call';
      case XenoCantoType.rivalrySong:
        return 'rivalry song';
      case XenoCantoType.searchingSong:
        return 'searching song';
      case XenoCantoType.socialCall:
        return 'social call';
      case XenoCantoType.song:
        return 'song';
      case XenoCantoType.subsong:
        return 'subsong';
      case XenoCantoType.territorialCall:
        return 'territorial call';
    }
  }
}

enum XenoCantoGroup {
  birds,
  grasshoppers,
  bats,
  frogs,
  landMammals,
  soundscape,
}

extension XenoCantoGroupExtension on XenoCantoGroup {
  XenoCantoGroup fromName(String name) {
    return XenoCantoGroup.values.firstWhere((e) => e.name == name);
  }

  String get name {
    switch (this) {
      case XenoCantoGroup.birds:
        return 'birds';
      case XenoCantoGroup.grasshoppers:
        return 'grasshoppers';
      case XenoCantoGroup.bats:
        return 'bats';
      case XenoCantoGroup.frogs:
        return 'frogs';
      case XenoCantoGroup.landMammals:
        return 'land mammals';
      case XenoCantoGroup.soundscape:
        return 'soundscape';
    }
  }
}
