import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LeftDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.all(15.0),
        color: Color(0xFF111328),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(0),
              ),
              Expanded(
                flex: 2,
                child: Icon(
                  FontAwesomeIcons.heartbeat,
                  size: 120.0,
                ),
              ),
              Expanded(
                child: Text(
                  'What is BMI?',
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              Expanded(
                child: Text(
                  'Body Mass Index (BMI) is a value derived from the mass (weight) and height of a person. The BMI is defined as the body mass divided by the square of the body height.',
                  style: TextStyle(fontSize: 15.0),
                  textAlign: TextAlign.justify,
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  'Commonly accepted BMI ranges are given below:\nUnderweight: <18.5\nNormal Weight: 18.5 to 25\nOverweight: 25 to 30\nModerately Obese: 30 to 35\nExtremely Obese: >35',
                  style: TextStyle(fontSize: 15.0),
                  textAlign: TextAlign.justify,
                ),
              ),
              Text(
                'Made with ❤️ in Flutter',
                style: TextStyle(fontSize: 15.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
