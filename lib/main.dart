import 'package:flutter/material.dart';
import 'package:gymapp/user_page/homePage.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}