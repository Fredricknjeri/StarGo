import 'package:StarGo/UI/views/home/home_view.dart';
import 'package:StarGo/UI/views/startup/startup_view.dart';
//import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter/material.dart';


abstract class Routes {
  static const startupViewRoute = '/startup';
  static const homeViewRoute = '/';
}

class Router {
  //static funtion that generates the routes
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.startupViewRoute:
        return MaterialPageRoute(builder: (_) => Startupview());

      case Routes.homeViewRoute:
        return MaterialPageRoute(builder: (_) => HomeView());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text("No route defined for ${settings.name}"),
                  ),
                ));
    }
  }
}
