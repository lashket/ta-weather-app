import 'package:taweather/data/network/remote_api_client.dart';
import 'package:taweather/models/weather_api_model.dart';

class WeatherRepository {

  final RemoteApiClient _apiClient = RemoteApiClient();

  Future<List<WeatherApiModel>> getWeather(int locationId, String date) {
    return _apiClient.getWeatherForDate(locationId, date);
  }

}