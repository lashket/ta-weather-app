import 'package:equatable/equatable.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override

  List<Object> get props => [];

}

class RequestWeatherFromAPi extends WeatherEvent {

  final cityId;

  const RequestWeatherFromAPi({this.cityId});

  @override
  List<Object> get props => [
    cityId
  ];
}

class GetWeatherByDayPointer extends WeatherEvent {

  final String dayPointer;

  const GetWeatherByDayPointer({this.dayPointer});

  @override

  List<Object> get props => [
    dayPointer
  ];

}
