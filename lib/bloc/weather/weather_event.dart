abstract class WeatherEvent {
  const WeatherEvent();
}

class RequestWeatherFromAPi extends WeatherEvent {
  final cityId;

  const RequestWeatherFromAPi({this.cityId});

}