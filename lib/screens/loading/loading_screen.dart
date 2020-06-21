import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _content(context);
  }

  Widget _content(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
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
