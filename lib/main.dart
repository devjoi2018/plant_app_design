import 'package:flutter/material.dart';
import 'package:plant_aplication_test/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
      },
    );
  }
}
