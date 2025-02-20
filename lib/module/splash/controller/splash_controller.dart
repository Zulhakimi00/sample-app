import 'package:sample_flutter/core/export.dart';
import 'package:sample_flutter/route/route.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed(AppRoutes.login);
    });
  }
}
