import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:japark/test.dart';
import 'Map_Home.dart';
import 'OnBoarding_Screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: OnBoarding_Screen.id,
    routes: {
      OnBoarding_Screen.id: (context) => OnBoarding_Screen(),
      Map_Home.id: (context) => Map_Home(),
      Test.id: (context) => Test(),
    },
  ));
}


