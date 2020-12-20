import 'package:bmi_calculator/custom_containerr.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'gender_card.dart';

const Color containerColor = Color(0xFF1D1E33);
const Color disabledContainerColor = Color(0xFF111328);
const Color bottomContainerColor = Color(0xFFEB1555);
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = disabledContainerColor;
  Color femaleCardColor = disabledContainerColor;
  Gender gender;

  //1=male, 2=female

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    child: CustomContainer(
                      color: gender == Gender.male
                          ? containerColor
                          : disabledContainerColor,
                      child: GenderCard(
                        icon: FontAwesomeIcons.mars,
                        text: 'male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    child: CustomContainer(
                        color: gender == Gender.female
                            ? containerColor
                            : disabledContainerColor,
                        child: GenderCard(
                          icon: FontAwesomeIcons.venus,
                          text: 'female',
                        )),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomContainer(
              color: containerColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CustomContainer(
                    color: containerColor,
                  ),
                ),
                Expanded(
                  child: CustomContainer(
                    color: containerColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 80,
          )
        ],
      ),
    );
  }
}
