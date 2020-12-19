import 'package:bmi_app/bottom_btn.dart';
import 'package:bmi_app/input_page.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: titleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: CardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText,
                      // 'normal',
                      style: resultTextStyle,
                    ),
                    Text(bmiResult,
                        // '18',
                        style: bmiTextStyle),
                    Text(
                      interpretation,
                      // 'jhjahf',
                      style: bodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'Re-calculate',
            ),
          ],
        ),
      );
    // );
  }
}


/*
MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home:  
      mra ku ni chlra tha hahahahah

      waaa hg waah aap bna diya aapne to mst wala yeha change kiyhn chlo fir bye bye riko hmicon sam ara h icon konsa  ?? are male female vala
      */