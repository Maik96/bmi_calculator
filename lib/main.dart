import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF0A0E21),
          ),
          scaffoldBackgroundColor: const Color(0xFF0A0E21),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(color: kLabelColor),
          )),
      debugShowCheckedModeBanner: false,
      home: const InputPage(),
    );
  }
}
