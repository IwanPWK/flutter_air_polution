// ignore_for_file: public_member_api_docs, sort_constructors_first
class AirQuality {
  int aqi;
  String cityName;
  String? message;
  String? emojiRef;
  AirQuality({
    required this.aqi,
    required this.cityName,
    this.message,
    this.emojiRef,
  });

  // Named constructor for creating an AirQuality instance from a Map
  factory AirQuality.fromJson(Map<String, dynamic> json) {
    return AirQuality(
      aqi: json['data']['aqi'] as int,
      cityName: json['data']['city']['name'] as String,
    );
  }
  @override
  String toString() {
    return 'AirQuality(aqi: $aqi, cityName: $cityName, message: $message, emojiRef: $emojiRef)';
  }
}
