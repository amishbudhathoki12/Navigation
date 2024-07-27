// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutterclass/pages/first_page.dart';
import 'package:flutterclass/pages/home.dart';
import 'package:flutterclass/pages/profile.dart';
import 'package:flutterclass/pages/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        'firstPage': (context) => FirstPage(),
        'home': (context) => Home(),
        'settings': (context) => Settings(),
        'profile': (context) => Profile(),
      },
    );
  }
}
