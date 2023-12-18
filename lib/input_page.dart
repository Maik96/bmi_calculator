// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bmi_calculator/calculator.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/results_page.dart';

import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/icon_content.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:bmi_calculator/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI"),
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
                  colorcard: selectedGender == Gender.male
                      ? kActiveContainerColor
                      : kInactiveContainerColor,
                  border: selectedGender == Gender.male
                      ? borderActive
                      : borderInActive,
                  cardChild: const ReusableGenderCard(
                    genderlabel: "Male",
                    gendericon: FontAwesomeIcons.mars,
                  ),
                ),
              ),
              Expanded(
                  child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colorcard: selectedGender == Gender.female
                          ? kActiveContainerColor
                          : kInactiveContainerColor,
                      border: selectedGender == Gender.female
                          ? borderActive
                          : borderInActive,
                      cardChild: const ReusableGenderCard(
                          genderlabel: "Female",
                          gendericon: FontAwesomeIcons.venus))),
            ],
          )),
          Expanded(
              child: ReusableCard(
            colorcard: kActiveContainerColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(kTextHeight, style: kLabelTextStyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(height.toString(), style: kNumberTextStyle),
                    const Text(
                      kTextHeightUnit,
                      style: kLabelTextStyle,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: kSliderMainColor,
                    inactiveTrackColor: kSliderSecondColor,
                    thumbColor: kSliderMainColor,
                    thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: kThumbShape),
                    overlayShape: const RoundSliderOverlayShape(
                        overlayRadius: kThumbOverlayRadius),
                  ),
                  child: Slider(
                      value: height.toDouble(),
                      min: kMinSlider,
                      max: kMaxSlider,
                      //label: '$height',
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
                child: ReusableCard(
                  colorcard: kActiveContainerColor,
                  cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(weightLabel, style: kLabelTextStyle),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              weightOnPress: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              weightOnPress: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            )
                          ],
                        ),
                      ]),
                ),
              ),
              Expanded(
                  child: ReusableCard(
                      colorcard: kActiveContainerColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(ageLabel, style: kLabelTextStyle),
                          Text(age.toString(), style: kNumberTextStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  weightOnPress: () {
                                    setState(() {
                                      age++;
                                    });
                                  }),
                              SizedBox(width: 10),
                              RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  weightOnPress: () {
                                    setState(() {
                                      age--;
                                    });
                                  }),
                            ],
                          )
                        ],
                      ))),
            ],
          )),
          BottomButton(
              buttonTitle: kCalculateLabel,
              onTap: () {
                Calculator calc = Calculator(height: height, weight: weight);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultsPage(
                              bmiResult: calc.calculateBMI(),
                              resultText: calc.getResult(),
                              resultInterpretation: calc.getInterpretation(),
                            )));
              }),
        ],
      ),
    );
  }
}
