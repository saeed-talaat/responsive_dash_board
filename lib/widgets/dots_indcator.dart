import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_dot_indcator.dart';

class DotsIndcator extends StatelessWidget {
  const DotsIndcator({super.key, required this.currentIndex});
  final int currentIndex ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) => Padding(
        padding: const EdgeInsets.only(right: 6),
        child: CustomDotIndcator(isActive: currentIndex == index),
      ) ,),
    );
  }
}