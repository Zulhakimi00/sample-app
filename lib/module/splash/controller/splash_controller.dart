import 'package:sample_flutter/core/export.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 2), () {
      // Get.offNamed(Routes.LOGIN);
    });
  }
}
