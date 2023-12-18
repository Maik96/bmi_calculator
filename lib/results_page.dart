// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {super.key,
      required this.bmiResult,
      required this.resultText,
      required this.resultInterpretation});

  final String bmiResult;
  final String resultText;
  final String resultInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15.0),
              child: Text("Your Result", style: kTitleResultTextStyle),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colorcard: kActiveContainerColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText, style: kResultTextStyle),
                    Text(bmiResult, style: kResultNumberTextStyle),
                    Text(resultInterpretation, style: kResultInfoTextStyle),
                  ],
                ),
              )),
          BottomButton(
              buttonTitle: "Back",
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
