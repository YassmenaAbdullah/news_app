import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/ui/home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash';

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
    });
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Image.asset('assets/images/news-logo.png',
          width: 350,
        ),
      ),
    );
  }
}
