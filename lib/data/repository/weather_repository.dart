import 'package:taweather/data/db/weather_database.dart';
import 'package:taweather/data/network/remote_api_client.dart';
import 'package:taweather/models/weather_api_model.dart';

class WeatherRepository {

  final RemoteApiClient _apiClient = RemoteApiClient();
  final WeatherDatabase _db = WeatherDatabase();

  Future<List<WeatherApiModel>> getWeather(int locationId, String date) {
    return _apiClient.getWeatherForDate(locationId, date);
  }

  Future<void> insertWeather(Weather weather) {
    return _db.insertWeather(weather);
  }

  Future<void> clearAllRecords() {
    return _db.clearDatabase();
  }

  Future<Weather> getWeatherByDayPointer(String pointer) {
    return _db.getWeatherItemByPointer(pointer);
  }

  Future<int> getItemsCount() async {
    return await _db.itemsCount();
  }

}