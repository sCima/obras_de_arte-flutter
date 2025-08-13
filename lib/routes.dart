import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:obras_de_arte/screen/home/home.dart';
import 'package:obras_de_arte/screen/intro/intro_screen.dart';
import 'package:obras_de_arte/screen/splash/splash_screen.dart';

class Routes {

  static const String splash = "/";
  static const String intro = "/intro";
  static const String home = "/home";

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch(routeSettings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case intro:
        return MaterialPageRoute(builder: (_) => IntroScreen());
      case home:
        return MaterialPageRoute(builder: (_) => Home());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(body: Center(child: Text("404"),),));
    }
  }

}