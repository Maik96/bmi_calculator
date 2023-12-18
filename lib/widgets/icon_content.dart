import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ReusableGenderCard extends StatelessWidget {
  final String genderlabel;
  final IconData gendericon;

  const ReusableGenderCard(
      {required this.genderlabel, required this.gendericon});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(gendericon, size: kIconSize),
          const SizedBox(height: kSizedBoxHeight),
          Text(genderlabel, style: kLabelTextStyle)
        ]);
  }
}
