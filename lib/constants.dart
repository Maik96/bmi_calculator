import 'package:flutter/material.dart';

const kSizedBoxHeight = 15.0;
const double kBottomContainerHeight = 80.0;
const kIconSize = 80.0;
const kMinSlider = 120.00;
const kMaxSlider = 220.00;
const kThumbShape = 15.00;
const kThumbOverlayRadius = 25.00;

// Border
Border borderActive = Border.all(color: Colors.amber, width: 2);
Border borderInActive = Border.all();

// Colors global
const Color kActiveContainerColor = Color(0xFF1D1E33);
const Color kInactiveContainerColor = Color(0xFF111328);
const Color kBottomContainerColor = Colors.amber;
const Color kSliderMainColor = Colors.amber;
const Color kSliderSecondColor = Colors.grey;
const Color kLabelColor = Colors.white;

// TextStyles global
const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

const kCalculateLabelStyle = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.w700,
  color: Color.fromARGB(255, 255, 255, 255),
);

const kTitleResultTextStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 255, 255, 255),
);

const kResultTextStyle = TextStyle(
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
  color: Colors.green,
);

const kResultNumberTextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 255, 255, 255),
);

const kResultInfoTextStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.normal,
  color: Color.fromARGB(255, 255, 255, 255),
);

const kNumberTextStyle = TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900);

// Text

const kTextHeight = "Height";
const kTextHeightUnit = "cm";
const ageLabel = "Age";
const weightLabel = "Weight";
const kCalculateLabel = "Calculate";
