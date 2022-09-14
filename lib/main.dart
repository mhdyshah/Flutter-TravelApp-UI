// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travell_app/screens/home_screen/home_screen.dart';
import 'package:travell_app/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travell App UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: "Montserrat"),
      ),
      home: HomeScreen(),
    );
  }
}
