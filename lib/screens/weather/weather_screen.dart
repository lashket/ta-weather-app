import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taweather/bloc/weather/weather_bloc.dart';
import 'package:taweather/bloc/weather/weather_event.dart';
import 'package:taweather/bloc/weather/weather_state.dart';
import 'package:taweather/data/db/weather_database.dart';
import 'package:taweather/utils/constants.dart';

class WeatherScreen extends StatelessWidget {

  void _updateCurrentDay(String dayPointer, BuildContext context) {
    BlocProvider.of<WeatherBloc>(context).add(GetWeatherByDayPointer(dayPointer: dayPointer));
  }

  @override
  Widget build(BuildContext context) {
    _updateCurrentDay(TODAY, context);
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        if(state is WeatherLoading) {
          return Container(
            color: Theme.of(context).primaryColor,
          );
        }
        if(state is SingleWeatherLoaded) {
          return _content(context, state.weather);
        }
        if(state is WeatherLoadingError) {
          return Container(
            color: Colors.red,
          );
        }
        return Container();
      },
    );
//    return Container(
//      child: _content(context),
//    );
  }

  Widget _content(BuildContext context, Weather weather) {
    final _dayPointer = weather.dayPointer;
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Stack(
              children: [
                Positioned(
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: SvgPicture.asset('assets/img/${weather.weatherStateAbbr}.svg'),
                          width: 100,
                          height: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Text('Погода в $CITY_NAME',style: TextStyle(
                              fontSize: 24.0,
                              color: Colors.white
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Text('Температура - ${weather.temperature.round()}',style: TextStyle(
                              fontSize: 36.0,
                              color: Colors.white.withOpacity(0.5)
                          ),),
                        ),
                        Visibility(
                          visible: _dayPointer == TOMORROW,
                          child: RaisedButton(
                            onPressed: (){

                            },
                            color: Theme.of(context).accentColor,
                            child: Text(
                              'Видео',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ),
                ),
                Positioned(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Visibility(
                          visible: _dayPointer != YESTERDAY,
                          child: RaisedButton(
                            onPressed: (){
                              _goBackForOneDay(_dayPointer, context);
                            },
                            color: Theme.of(context).accentColor,
                            child: Text(
                                _dayPointer == TOMORROW ? 'Сегодня' : 'Вчера',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Visibility(
                          visible: _dayPointer != TOMORROW,
                          child: RaisedButton(
                            onPressed: (){
                              _goForwardForOneDay(_dayPointer, context);
                            },
                            color: Theme.of(context).accentColor,
                            child: Text(
                              _dayPointer == YESTERDAY ? 'Сегодня' : 'Завтра',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }

  void _goBackForOneDay(String dayPointer, BuildContext context) {
    if(dayPointer == TODAY) {
      _updateCurrentDay(YESTERDAY, context);
    }
    if(dayPointer == TOMORROW) {
      _updateCurrentDay(TODAY, context);
    }
  }

  void _goForwardForOneDay(String dayPointer, BuildContext context) {
    if(dayPointer == TODAY) {
      _updateCurrentDay(TOMORROW, context);
    }
    if(dayPointer == YESTERDAY) {
      _updateCurrentDay(TODAY, context);
    }
  }

}
