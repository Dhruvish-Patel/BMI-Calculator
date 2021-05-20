import 'package:flutter/material.dart';

import 'input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Color(0xFF090B1E),
        ),
        scaffoldBackgroundColor: Color(0xFF111428),
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(
              Icons.bar_chart,
              size: 25.0,
            ),
            title: Text('BMI CALCULATOR'),
          ),
          body: InputPage(),
        ),
      ),
    );
  }
}
