abstract class WeatherEvent {
  const WeatherEvent();
}

class RequestWeatherFromAPi extends WeatherEvent {

  final cityId;

  const RequestWeatherFromAPi({this.cityId});

}

class GetWeatherByDayPointer extends WeatherEvent {

  final String dayPointer;

  const GetWeatherByDayPointer({this.dayPointer});

}

class ShowVideoWidget extends WeatherEvent {}
