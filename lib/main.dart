import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/login/login_screen.dart';
import 'package:medical_app/regester/regester_screen.dart';
import 'package:medical_app/splash/splash_screen.dart';
import 'package:medical_app/theme/theming.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashSceen.routeName,
      routes: {
        SplashSceen.routeName : (context) => SplashSceen(),
        LogoScreen.routeName : (context) => LogoScreen(),
        RegisterScreen.routeName : (context) => RegisterScreen(),
      },
      locale: Locale("en"),
      theme : MyTheme.lightTheme,
    );
  }
}

