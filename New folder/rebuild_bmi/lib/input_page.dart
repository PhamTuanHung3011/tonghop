import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rebuild_bmi/constants.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int _currentSliderValue = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1D1E33),
        title: const Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardChirl: choiceGeneral(
                      choiceIcon: FontAwesomeIcons.mars,
                      choiceText: 'MALE',
                    ),
                    colour: selectedGender == Gender.male
                        ? kActiveCardColour
                        : kInactiveCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardChirl: choiceGeneral(
                        choiceIcon: FontAwesomeIcons.venus,
                        choiceText: 'FEMALE'),
                    colour: selectedGender == Gender.female
                        ? kActiveCardColour
                        : kInactiveCardColour,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChirl: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Height',
                    style: kLableTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        _currentSliderValue.toString(),
                        style: kTextShowHeight,
                      ),
                      const Text(
                        'cm',
                        style: kLableTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 10.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: _currentSliderValue.toDouble(),
                      max: 210,
                      min: 70,
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
              onPress: () {},
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  onPress: () {},
                  cardChirl: choiceGeneral(
                      choiceIcon: FontAwesomeIcons.venus, choiceText: 'FEMALE'),
                  colour: kActiveCardColour,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {},
                  cardChirl: choiceGeneral(
                      choiceIcon: FontAwesomeIcons.venus, choiceText: 'FEMALE'),
                  colour: kActiveCardColour,
                ),
              ),
            ],
          )),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            decoration: BoxDecoration(
              color: kBottomContainerColour,
              borderRadius: BorderRadius.circular(12.0),
            ),
            width: double.infinity,
            height: kBottomContainerHeight,
            child: const Center(
                child: Text(
              'GO TO RESULT',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            )),
          )
        ],
      ),
    );
  }
}
