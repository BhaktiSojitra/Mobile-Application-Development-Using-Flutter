import 'package:dummy/CarouselSlider_demo.dart';
import 'package:dummy/Row_Column_Demo.dart';
import 'package:dummy/bottom_sheet_demo.dart';
import 'package:dummy/button_demo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: CarouselSlider_demo(),
      /*
      home: row_column_demo(),
      home: bottom_sheet_demo(),
      home: button(),
      */
    );
  }
}