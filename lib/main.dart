import 'package:flutter/material.dart';
import 'package:prakmobileuts/pages/home.dart';
import 'package:prakmobileuts/pages/login.dart';
import 'package:prakmobileuts/pages/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: LoginPage(),
    );
  }
}
