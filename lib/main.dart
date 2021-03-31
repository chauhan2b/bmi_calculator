import 'package:flutter/material.dart';

import './input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFF0A0D22),
          scaffoldBackgroundColor: Color(0xFF0A0D22),
          accentColor: Colors.purple,
          textTheme: TextTheme(bodyText2: TextStyle(color: Color(0xFFFFFFFF)))),
      home: InputPage(),
    );
  }
}
