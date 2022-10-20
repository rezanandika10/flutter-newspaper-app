import 'package:flutter/material.dart';
import 'package:flutter_newspaper_app/feature/home/data/homeuserdata.dart';

import 'feature/home/presentation/screen/home_screen.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home-route':
        // final String? title = settings.arguments as String;
        // final Homeduserdata? homeduserdata =
        //     settings.arguments as Homeduserdata;
        return PageRouteBuilder<dynamic>(
            pageBuilder: (_, __, ___) =>
                HomeScreen(homeduserdata: Homeduserdata(user: "user")),
            settings: RouteSettings(name: settings.name),
            transitionsBuilder: (_, Animation<double> a, __, Widget c) =>
                FadeTransition(opacity: a, child: c));

      default:
        return MaterialPageRoute<dynamic>(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
