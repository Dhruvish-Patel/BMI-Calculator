import 'package:bmicalculator_new/constants.dart';
import 'package:bmicalculator_new/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'gender_card.dart';
import 'base_card.dart';
import 'bmi_brain.dart';

bool maleSelected = false;
bool femaleSelected = false;
double height = 150.0;
int weight = 80;
int age = 18;

class InputPage extends StatefulWidget {
  const InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      maleSelected = true;
                      femaleSelected = false;
                    });
                  },
                  child: BaseCard(
                    colour: maleSelected
                        ? Color(kActiveCardColor)
                        : Color(kInactiveCardColor),
                    child: GenderCard(
                      icon: FontAwesomeIcons.mars,
                      gender: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      femaleSelected = true;
                      maleSelected = false;
                    });
                  },
                  child: BaseCard(
                    colour: femaleSelected
                        ? Color(kActiveCardColor)
                        : Color(kInactiveCardColor),
                    child: GenderCard(
                      icon: FontAwesomeIcons.venus,
                      gender: 'FEMALE',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: BaseCard(
            colour: Color(kActiveCardColor),
            child: Column(
              children: [
                Text(
                  'HEIGHT',
                  style: kLabelTextStyle,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text(
                      height.round().toString(),
                      style: kNumberTextStyle,
                    ),
                    Text(
                      'cm',
                      style: TextStyle(fontSize: 20.0),
                    )
                  ],
                ),
                Slider(
                  activeColor: Color(kpinkColor),
                  inactiveColor: Colors.white,
                  value: height,
                  min: 120.0,
                  max: 220.0,
                  onChanged: (value) {
                    setState(() {
                      height = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: BaseCard(
                  colour: Color(kActiveCardColor),
                  child: Column(
                    children: [
                      Text(
                        'WEIGHT',
                        style: kLabelTextStyle,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        weight.toString(),
                        style: kNumberTextStyle,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Color(0xFF14244F),
                                radius: 25.0,
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Color(0xFF14244F),
                                radius: 25.0,
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: BaseCard(
                  colour: Color(kActiveCardColor),
                  child: Column(
                    children: [
                      Text(
                        'AGE',
                        style: kLabelTextStyle,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        age.toString(),
                        style: kNumberTextStyle,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Color(0xFF14244F),
                                radius: 25.0,
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Color(0xFF14244F),
                                radius: 25.0,
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              Calculate calc = new Calculate(height: height, weight: weight);

              return ResultPage(
                score: calc.getScore(),
                result: calc.getResult(),
                inference: calc.getinference(),
                colour: calc.getcolor(),
              );
            }));
          },
          child: Container(
            color: Color(kpinkColor),
            height: 80.0,
            padding: EdgeInsets.only(bottom: 15.0),
            child: Center(
              child: Text(
                'CALCULATE',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
