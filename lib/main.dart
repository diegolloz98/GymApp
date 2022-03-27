import 'package:flutter/material.dart';
import 'package:gymapp/user_page/login.dart';
import 'package:gymapp/user_page/browse.dart';
import 'package:gymapp/user_page/homePage.dart';
import 'package:gymapp/user_page/signIn.dart';
import 'package:gymapp/user_page/routines.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepPurple), home: Routines());
  }
}
