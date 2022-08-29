import 'package:flutter/material.dart';
import '../../../../util/colors.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({Key? key, this.isActive = false}) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      height: isActive ? 12 : 6,
      width: 6,
      decoration: const BoxDecoration(
        color: MyColors.primaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
