import 'package:fauxturf/app/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Core {
  static statausBarColor({
    Color stataus = MyColors.transparentColor,
    Color navigate = MyColors.transparentColor,
    Brightness brightness = Brightness.dark,
  }) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarIconBrightness: brightness,
        systemNavigationBarIconBrightness: brightness,
        statusBarColor: stataus,
        systemNavigationBarColor: navigate,
      ),
    );
  }
}
