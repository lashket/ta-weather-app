// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherApiModel _$WeatherApiModelFromJson(Map<String, dynamic> json) {
  return WeatherApiModel(
    temperature: (json['the_temp'] as num)?.toDouble(),
    date: json['applicable_date'] as String,
    weatherStateAbbr: json['weather_state_abbr'] as String,
  );
}

Map<String, dynamic> _$WeatherApiModelToJson(WeatherApiModel instance) =>
    <String, dynamic>{
      'the_temp': instance.temperature,
      'applicable_date': instance.date,
      'weather_state_abbr': instance.weatherStateAbbr,
    };
