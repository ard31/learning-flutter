import 'package:flutter/material.dart';
import 'package:flutter_app/ExpandedFlexiblePage.dart';
import 'package:flutter_app/detail_screen.dart';
import 'package:flutter_app/FirstScreen.dart';
import 'package:flutter_app/main_screen.dart';
import 'ScrollingScreen.dart';
import 'package:flutter_app/Rainbow.dart';
import 'package:flutter_app/HomePage.dart';
import 'model/tourism_place.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}
