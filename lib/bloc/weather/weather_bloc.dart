import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taweather/bloc/weather/weather_event.dart';
import 'package:taweather/bloc/weather/weather_state.dart';
import 'package:taweather/data/repository/weather_repository.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {

  final WeatherRepository _repository = WeatherRepository();


  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) {

  }

  @override
  WeatherState get initialState => WeatherInitial();
}