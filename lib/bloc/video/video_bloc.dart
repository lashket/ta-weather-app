import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taweather/bloc/weather/weather_event.dart';
import 'package:taweather/bloc/weather/weather_state.dart';

class VideoBloc extends Bloc<WeatherEvent, WeatherState> {

  @override
  WeatherState get initialState {

  }

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) {

  }
}