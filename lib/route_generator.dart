import 'package:flutter/material.dart';
import 'package:lesson15/green_page.dart';
import 'package:lesson15/red_page.dart';
import 'package:lesson15/yellow_page.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => RedPage());
      case "/yellowPage":
        return MaterialPageRoute(builder: (context) => YellowPage());
      case "/greenPage":
        String name = settings.arguments as String;
        return MaterialPageRoute(builder: (context) => GreenPage(ad: name));
      default:
        return MaterialPageRoute(builder: (context) => YellowPage());
    }
  }
}
