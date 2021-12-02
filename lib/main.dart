import 'package:every_interface/Screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:every_interface/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: kBackground,
      ),
    );
  }
}
