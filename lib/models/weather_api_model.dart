import 'package:json_annotation/json_annotation.dart';
part 'weather_api_model.g.dart';

@JsonSerializable()
class WeatherApiModel {

  @JsonKey(name: "the_temp") double temperature;
  @JsonKey(name: "applicable_date") String date;
  @JsonKey(name: "weather_state_abbr") String weatherStateAbbr;

  WeatherApiModel({this.temperature, this.date, this.weatherStateAbbr});

  factory WeatherApiModel.fromJson(Map<String, dynamic> json) => _$WeatherApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherApiModelToJson(this);

}