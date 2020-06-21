import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taweather/bloc/weather/weather_event.dart';
import 'package:taweather/bloc/weather/weather_state.dart';
import 'package:taweather/data/repository/weather_repository.dart';
import 'package:taweather/models/weather_api_model.dart';
import 'package:taweather/utils/date_utils.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {

  final WeatherRepository _repository = WeatherRepository();


  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    if(event is RequestWeatherFromAPi) {
      yield WeatherLoading();
      try {
        final List<WeatherApiModel> yesterdayWeathers = await _repository
            .getWeather(
            event.cityId, DateUtils.instance.yesterdayApiRequestDate());
        final List<WeatherApiModel> todayWeathers = await _repository
            .getWeather(event.cityId, DateUtils.instance.todayApiRequestDate());
        final List<WeatherApiModel> tomorrowWeathers = await _repository
            .getWeather(
            event.cityId, DateUtils.instance.tomorrowApiRequestDate());
        yield WeatherLoaded();
      } catch(_) {
        yield WeatherLoadingError();
      }
    }
  }

  @override
  WeatherState get initialState => WeatherInitial();
}