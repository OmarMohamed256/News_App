import 'package:flutter/material.dart';
import 'package:news_application/tabs/SettingsTab.dart';
import 'Home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        Home.routeName: (context) => Home(),
        SettingsTab.routeName: (context) => SettingsTab(),
      },
      initialRoute: Home.routeName,
    );
  }
}