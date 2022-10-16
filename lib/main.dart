
import 'dart:math';
import 'package:bmical/login%20bmi.dart';
import 'package:bmical/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}

