import 'package:flutter/material.dart';
import '../../util/colors.dart';
import '../../util/images.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                MyImages.onBoard1,
                width: size.width * .75,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
