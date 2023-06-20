import 'package:flutter/material.dart';

import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
  });

  final String bmiResult;
  final String resultText;
  final String interpretation;

  Color getColor() {
    if (resultText == 'EXTREMELY OBESE') {
      return Colors.redAccent;
    } else if (resultText == 'MODERATELY OBESE') {
      return Colors.deepOrangeAccent;
    } else if (resultText == 'OVERWEIGHT') {
      return Colors.orangeAccent;
    } else if (resultText == 'NORMAL') {
      return Colors.greenAccent;
    } else if (resultText == 'UNDERWEIGHT') {
      return Colors.yellowAccent;
    } else {
      return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Results',
                style: kTitleTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              onPress: () {},
              colour: kActiveCardColor,
              margin: EdgeInsets.all(15.0),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kResultTextStyle.copyWith(
                      color: getColor(),
                    ),
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
