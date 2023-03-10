import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medical_app/login/login_screen.dart';

class SplashSceen extends StatefulWidget{

  static const String routeName = "splash";

  @override
  State<SplashSceen> createState() => _SplashSceenState();
}

class _SplashSceenState extends State<SplashSceen> {



  @override
  void initState() {
    Timer(Duration(seconds: 2) , () => Navigator.pushReplacementNamed(context, LogoScreen.routeName),);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/images/logo1.png")),

          ],
        ),
      ),
    );
  }
}

