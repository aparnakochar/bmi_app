import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'result_page.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'bottom_btn.dart';
import 'round_btn.dart';
import 'calculator_brain.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 11;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  : inactiveCardColour,  // calculation sahi aa rahi hai?hnse kese pata? sb ptaaaa wahi to kese b6 sense?kh ni ek batao to  6 sense n btadiya haye  raam haha chlo fir  b thnku its ok dear ye 
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
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'height',
                  style: labelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      height.toString(),
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'cm',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    thumbColor: Color(0xFFEB1555),
                    overlayColor: Color(0xFFEB1555),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 20),
                  ),
                  child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      activeColor: Color(0xFFEB15555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      }),
                )
              ],
            ),
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: new ReusableCard(
                colour: CardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'weight',
                      style: labelTextStyle,
                    ),
                    Text(
                      weight.toString(),
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                weight = weight + 1;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                weight = weight - 1;
                              });
                            },
                          ),
                        ]),
                  ],
                ),
              )),
              Expanded(
                  child: new ReusableCard(
                colour: CardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'age',
                      style: labelTextStyle,
                    ),
                    Text(
                      age.toString(),
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                age = age + 1;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                age = age - 1;
                              });
                            },
                          ),
                        ]),
                  ],
                ),
              )),
            ],
          )),
          BottomButton(
            buttonTitle: 'Calculate',
            onTap: () {
              CalculatorBrain calc =
                  new CalculatorBrain(height: height, weight: weight);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultsPage(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  )));
            },
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
