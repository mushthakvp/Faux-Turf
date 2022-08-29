import 'dart:async';

import 'package:fauxturf/app/modules/onboard/views/onboard_view.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(
      Duration(seconds: 2),
      () => Get.off(
        OnboardView(),
      ),
    );
    super.onInit();
  }
}
