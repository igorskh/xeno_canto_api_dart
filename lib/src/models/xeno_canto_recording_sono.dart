class XenoCantoRecordingSono {
  final String small;
  final String med;
  final String large;
  final String full;

  XenoCantoRecordingSono({
    required this.small,
    required this.med,
    required this.large,
    required this.full,
  });

  factory XenoCantoRecordingSono.fromJson(Map<String, dynamic> json) {
    return XenoCantoRecordingSono(
      small: json['small'],
      med: json['med'],
      large: json['large'],
      full: json['full'],
    );
  }
}
