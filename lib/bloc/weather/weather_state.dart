abstract class WeatherState {

  const WeatherState();

}

class WeatherLoading extends WeatherState {}

class WeatherLoadingError extends WeatherState {}

class WeatherInitial extends WeatherState {}

class WeatherLoaded extends WeatherState {}
