import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taweather/bloc/weather/weather_event.dart';
import 'package:taweather/bloc/weather/weather_state.dart';
import 'package:taweather/data/db/weather_database.dart';
import 'package:taweather/data/repository/weather_repository.dart';
import 'package:taweather/models/weather_api_model.dart';
import 'package:taweather/utils/constants.dart';
import 'package:taweather/utils/date_utils.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {

  final WeatherRepository _repository = WeatherRepository();


  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    if(event is RequestWeatherFromAPi) {
      yield WeatherLoading();
      try {
        if(await _repository.getItemsCount() != 3) {
          await _loadAndSaveData(event.cityId);
        } else {
          final Weather todayDbWeather = await _repository.getWeatherByDayPointer(TODAY);
          if(todayDbWeather.applicableDate != DateUtils.instance.currentDateInResponseFormat()) {
           await _loadAndSaveData(event.cityId);
          }
        }
        yield WeatherLoaded();
      } catch(_) {
        yield WeatherLoadingError();
      }
    }
  }

  Future<void> _loadAndSaveData(int cityId) async{
    _repository.clearAllRecords();
    final List<WeatherApiModel> yesterdayWeathers = await _repository
        .getWeather(
        cityId, DateUtils.instance.yesterdayApiRequestDate());
    await _repository.insertWeather(yesterdayWeathers.first.toDbModel(YESTERDAY));
    final List<WeatherApiModel> todayWeathers = await _repository
        .getWeather(
        cityId, DateUtils.instance.todayApiRequestDate());
    await _repository.insertWeather(todayWeathers.first.toDbModel(TODAY));
    final List<WeatherApiModel> tomorrowWeathers = await _repository
        .getWeather(
        cityId, DateUtils.instance.tomorrowApiRequestDate());
    await _repository.insertWeather(tomorrowWeathers.first.toDbModel(TOMORROW));
  }

  @override
  WeatherState get initialState => WeatherInitial();
}