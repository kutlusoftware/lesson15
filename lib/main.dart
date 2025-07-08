import 'package:flutter/material.dart';
import 'package:lesson15/error_page.dart';
import 'package:lesson15/green_page.dart';
import 'package:lesson15/red_page.dart';
import 'package:lesson15/route_generator.dart';
import 'package:lesson15/yellow_page.dart';

void main() {
  runApp(const MyApp());
}

//

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /* routes: {
        "/": (context) => RedPage(),
        "/yellowPage": (context) => YellowPage(),
        "/greenPage": (context) => GreenPage(),
      },*/
      onGenerateRoute: RouteGenerator.routeGenerator,
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => ErrorPage()),
      theme: ThemeData(
        // primarySwatch: Colors.red,
        // brightness: Brightness.light,
        // fontFamily: 'Roboto',
        textTheme: TextTheme(
          headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      home:
          RedPage(), //=> Ana Route olarak "RedPage" verdiğimiz için Yorum Satırına aldık
    );
  }
}
