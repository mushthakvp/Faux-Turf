import 'package:fauxturf/app/util/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFonts {
  static gfont({
    Color color = MyColors.whiteColor,
    double size = 16,
    double? letterSpace,
    FontWeight? fontWeight,
  }) {
    return GoogleFonts.ubuntu(
      color: color,
      fontSize: size,
      letterSpacing: letterSpace,
      fontWeight: fontWeight,
    );
  }
}
