import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {@required this.colorcard, this.cardChild, this.onPress, this.border});

  final Color? colorcard;
  final Widget? cardChild;
  final Function()? onPress;
  final Border? border;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: colorcard,
            border: border),
        child: cardChild,
      ),
    );
  }
}
