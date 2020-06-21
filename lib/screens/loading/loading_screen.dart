import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taweather/bloc/weather/weather_bloc.dart';
import 'package:taweather/bloc/weather/weather_event.dart';
import 'package:taweather/bloc/weather/weather_state.dart';
import 'package:taweather/utils/constants.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<WeatherBloc, WeatherState>(
      listener: (context, state) {
        if (state is WeatherLoaded) {
          Navigator.pushNamedAndRemoveUntil(
              context, '/weather_info', (route) => false);
        }
      },
      child: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          if(state is WeatherInitial) {
            BlocProvider.of<WeatherBloc>(context).add(RequestWeatherFromAPi(cityId: CITY_ID));
          }
          if(state is WeatherLoading) {
            return _content(context);
          }
          if(state is WeatherLoadingError) {
            return Container(
              color: Colors.red,
            );
          }
          return Container();
        },
      ),
    );
  }

  Widget _content(BuildContext context) {
    return Container(
      color: Theme
          .of(context)
          .primaryColor,
      child: Center(
        child: Container(
            width: 100,
            height: 100,
            child: Image.asset('assets/img/sun.png')
        ),
      ),
    );
  }

}
