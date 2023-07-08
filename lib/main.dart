import 'package:flutter/material.dart';
import 'package:news_app/splash/splash_screen.dart';
import 'package:news_app/home_screen.dart';
import 'package:news_app/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName:(_) => HomeScreen(),
        SplashScreen.routeName: (_) =>  SplashScreen(),
      },
      initialRoute: SplashScreen.routeName,
      theme: MyTheme.lightTheme,
    );
  }
}
