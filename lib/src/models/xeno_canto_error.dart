class XenoCantoError implements Exception {
  final String message;
  final String error;

  XenoCantoError({required this.message, required this.error});

  factory XenoCantoError.fromJson(Map<String, dynamic> json) {
    return XenoCantoError(message: json['message'], error: json['error']);
  }
}
