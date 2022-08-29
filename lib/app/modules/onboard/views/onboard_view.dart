import 'package:fauxturf/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/eva.dart';
import '../../../util/colors.dart';
import '../controllers/onboard_controller.dart';
import '../model/onboard.dart';
import 'widgets/dot_indicator.dart';
import 'widgets/onboard_content.dart';

class OnboardView extends GetView<OnBoardController> {
  final onBoardController = Get.put(OnBoardController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  controller: onBoardController.pageController,
                  physics: const BouncingScrollPhysics(),
                  itemCount: obBoardList.length,
                  onPageChanged: (index) {
                    onBoardController.changePageIndex(index);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    final data = obBoardList[index];
                    return OnBoardContent(size: size, data: data);
                  }),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.width / 16, horizontal: size.width / 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: List.generate(
                      obBoardList.length,
                      (index) => GetBuilder<OnBoardController>(
                        init: OnBoardController(),
                        builder: (obj) {
                          return DotIndicator(isActive: obj.pageIndex == index);
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: GetBuilder<OnBoardController>(
                        init: OnBoardController(),
                        builder: (obj) {
                          return ElevatedButton(
                            onPressed: () {
                              obj.pageIndex != 2
                                  ? onBoardController.pageController.nextPage(
                                      duration: const Duration(microseconds: 200),
                                      curve: Curves.easeInCubic,
                                    )
                                  : Get.off(HomeView());
                            },
                            style: ElevatedButton.styleFrom(
                              primary: MyColors.primaryColor,
                              shape: const CircleBorder(),
                            ),
                            child: obj.pageIndex != obBoardList.length - 1
                                ? const Iconify(
                                    Eva.arrow_ios_forward_outline,
                                    color: MyColors.whiteColor,
                                  )
                                : const Iconify(
                                    Carbon.home,
                                    color: MyColors.whiteColor,
                                  ),
                          );
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
