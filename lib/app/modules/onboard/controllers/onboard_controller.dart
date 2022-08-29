import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../util/colors.dart';
import '../../../util/core.dart';

class OnBoardController extends GetxController {
  late PageController pageController;

  @override
  void onInit() {
    Core.statausBarColor(stataus: MyColors.whiteColor, navigate: MyColors.whiteColor);
    pageController = PageController(initialPage: 0);
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    Core.statausBarColor();
    super.onClose();
  }

  int pageIndex = 0;
  changePageIndex(int pageIndex) {
    this.pageIndex = pageIndex;
    update();
  }
}
