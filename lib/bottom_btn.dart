import 'package:flutter/material.dart';
import 'constants.dart';
import 'result_page.dart';

class BottomButton extends StatelessWidget {

  BottomButton({@required this.onTap, @required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      // () {
      //   Navigator.push(
      //       context, MaterialPageRoute(builder: (context) => ResultsPage(),
      //       ),);
      // },
      child: Container(
        child: Center(
            child: Text(
          // 'Re_CALCULATE', yeha to dynamic input lenaa hai ni
          buttonTitle,
          style: largeButtonStyle,
        )),
        color: Colors.pink,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 15),
        width: double.infinity,
        height: 40,
      ),
    );
  }
}