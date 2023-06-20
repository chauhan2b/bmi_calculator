import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({
    required this.colour,
    required this.cardChild,
    required this.onPress,
    required this.margin,
  });

  final Color colour;
  final Widget cardChild;
  final Function()? onPress;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: margin,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
