import 'package:equatable/equatable.dart';
import 'package:taweather/data/db/weather_database.dart';

abstract class WeatherState extends Equatable {

  const WeatherState();

  @override

  List<Object> get props => [];

}

class WeatherLoading extends WeatherState {}

class WeatherLoadingError extends WeatherState {}

class WeatherInitial extends WeatherState {}

class WeatherLoaded extends WeatherState {}

class SingleWeatherLoaded extends WeatherState {

  final Weather weather;

  const SingleWeatherLoaded({this.weather});

  @override
  List<Object> get props => [
    weather
  ];

}