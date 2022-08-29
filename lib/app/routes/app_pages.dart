import 'package:get/get.dart';
import 'package:fauxturf/app/modules/home/bindings/home_binding.dart';
import 'package:fauxturf/app/modules/home/views/home_view.dart';
import 'package:fauxturf/app/modules/onboard/bindings/onboard_binding.dart';
import 'package:fauxturf/app/modules/onboard/views/onboard_view.dart';
import 'package:fauxturf/app/modules/splash/bindings/splash_binding.dart';
import 'package:fauxturf/app/modules/splash/views/splash_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.onboard,
      page: () => OnboardView(),
      binding: OnboardBinding(),
    ),
    GetPage(
      name: _Paths.splash,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
  ];
}
