import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:your_health/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarBrightness: Brightness.dark,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your Health',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: YourHealthHomeScreen(),
    );
  }
}
