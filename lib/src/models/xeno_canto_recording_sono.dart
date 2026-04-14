class XenoCantoRecordingSono {
  final String? small;
  final String? med;
  final String? large;
  final String? full;

  XenoCantoRecordingSono({
    this.small,
    this.med,
    this.large,
    this.full,
  });

  factory XenoCantoRecordingSono.fromJson(Map<String, dynamic> json) {
    return XenoCantoRecordingSono(
      small: json['small'],
      med: json['med'],
      large: json['large'],
      full: json['full'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'small': small,
      'med': med,
      'large': large,
      'full': full,
    };
  }
}
