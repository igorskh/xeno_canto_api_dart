class XenoCantoRecordingOsci {
  final String small;
  final String med;
  final String large;

  XenoCantoRecordingOsci({
    required this.small,
    required this.med,
    required this.large,
  });

  factory XenoCantoRecordingOsci.fromJson(Map<String, dynamic> json) {
    return XenoCantoRecordingOsci(
      small: json['small'],
      med: json['med'],
      large: json['large'],
    );
  }
}