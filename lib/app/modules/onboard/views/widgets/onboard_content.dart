import 'package:flutter/material.dart';
import '../../../../util/colors.dart';
import '../../../../util/fonts.dart';
import '../../model/onboard.dart';

class OnBoardContent extends StatelessWidget {
  final OnBoardModel data;
  const OnBoardContent({
    Key? key,
    required this.size,
    required this.data,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(),
        Center(
          child: Image.asset(
            data.image,
            width: size.width * .75,
          ),
        ),
        const Spacer(),
        Text(
          data.title,
          style: MyFonts.gfont(
            color: MyColors.primaryColor,
            size: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            data.content,
            style: MyFonts.gfont(
              size: 16,
              color: MyColors.primaryColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
