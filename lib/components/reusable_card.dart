import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({this.colour, super.key, this.cardChild, this.onPress});

  final Color? colour;
  final Widget? cardChild;
  final Function? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress;
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15),
        ),
        child: cardChild,
      ),
    );
  }
}
