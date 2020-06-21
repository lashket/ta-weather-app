import 'dart:convert';

import 'package:taweather/models/weather_api_model.dart';
import 'package:http/http.dart' as http;
import 'package:taweather/utils/constants.dart';

class RemoteApiClient {

  Future<List<WeatherApiModel>> getWeatherForDate(int locationId, String date) async {
    final response = await http.get('$BASE_URL/api/location/$locationId/$date');
    if(response.statusCode != 200) {
      throw('Error when loading weather for cityId $locationId');
    }
    final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
    return parsed.map<WeatherApiModel>((json) => WeatherApiModel.fromJson(json)).toList();
  }

}