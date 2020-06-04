import 'package:covid19/HomePage/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:covid19/HomePage/ConstantValues.dart';
import 'package:covid19/Symptoms/symptomsPage.dart';
import 'package:covid19/PreventionPage/Prevention.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(kstatusColor);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/symptoms': (context) => SymptomsPage(),
        '/prevention': (context) => Prevention(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: kbgColor,
      ),
      home: Home(),
    );
  }
}
