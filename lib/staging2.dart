/* import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
const CardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  /*  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;
  // 1. male 2.female
  void updateColour(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColour == inactiveCardColour) {
        maleCardColour = CardColour;
         femaleCardColour = inactiveCardColour;
      } else {
        maleCardColour = inactiveCardColour;
         femaleCardColour = CardColour;
      }
    }
    if (selectedGender == Gender.female) {
      if (femaleCardColour == inactiveCardColour) {
        femaleCardColour = CardColour;
          maleCardColour = inactiveCardColour;
      } else {
        femaleCardColour = inactiveCardColour;
            maleCardColour = CardColour;
      }
    }
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(children: <Widget>[
            Expanded(
                child: new ReusableCard(
              onPress: () {
                setState(() {
                  selectedGender = Gender.male;
                });
              },
              colour: selectedGender == Gender.male
                  ? CardColour
                  : inactiveCardColour,
              cardChild: IconContent(
                icon: FontAwesomeIcons.mars,
                label: 'male',
              ),
            )),
            Expanded(
                child: new ReusableCard(
              onPress: () {
                setState(() {
                  selectedGender = Gender.female;
                });
              },
              colour: selectedGender == Gender.female
                  ? CardColour
                  : inactiveCardColour,
              cardChild: IconContent(
                icon: FontAwesomeIcons.venus,
                label: 'female',
              ),
            )),
          ])),
          Expanded(
              child: new ReusableCard(
            colour: CardColour,
            cardChild: Column(children:<Widget> [
              Text('height'),
            ],),
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: new ReusableCard(
                colour: CardColour,
              )),
              Expanded(
                  child: new ReusableCard(
                colour: CardColour,
              )),
            ],
          )),
          Container(
            color: Colors.pink,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 40,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
 */