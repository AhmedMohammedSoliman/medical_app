import 'package:flutter/material.dart';
import 'package:medical_app/login/login_screen.dart';
import 'package:medical_app/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashSceen.routeName,
      routes: {
        SplashSceen.routeName : (context) => SplashSceen(),
        LogoScreen.routeName : (context) => LogoScreen(),
      },
      locale: Locale("en"),
    );
  }
}

