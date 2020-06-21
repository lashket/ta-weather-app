import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taweather/utils/constants.dart';

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _content(context),
    );
  }

  Widget _content(BuildContext context) {
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
                          child: SvgPicture.asset('assets/img/c.svg'),
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
                          child: Text('+15',style: TextStyle(
                              fontSize: 36.0,
                              color: Colors.white.withOpacity(0.5)
                          ),),
                        )
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
                        RaisedButton(
                          onPressed: (){},
                          color: Theme.of(context).accentColor,
                          child: Text(
                            'Вчера',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        RaisedButton(
                          onPressed: (){},
                          color: Theme.of(context).accentColor,
                          child: Text(
                            'Завтра',
                            style: TextStyle(color: Colors.white),
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


}
