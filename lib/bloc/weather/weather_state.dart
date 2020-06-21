import 'package:taweather/data/db/weather_database.dart';

abstract class WeatherState {

  const WeatherState();

}

class WeatherLoading extends WeatherState {}

class WeatherLoadingError extends WeatherState {}

class WeatherInitial extends WeatherState {}

class WeatherLoaded extends WeatherState {}

class SingleWeatherLoaded extends WeatherState {

  final Weather weather;

  const SingleWeatherLoaded({this.weather});

}

class ShowVideoState extends WeatherState {}