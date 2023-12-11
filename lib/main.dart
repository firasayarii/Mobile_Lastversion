import 'package:flutter/material.dart';
import 'package:hope/layout/screenlayout.dart';
import 'package:hope/layout/screenlayout.dart';
import 'package:hope/screens/login.dart';
import 'package:hope/screens/signup.dart';
import 'package:hope/utils/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FinanSync',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: SignupScreen(),
    );
  }
}