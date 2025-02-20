import 'package:sample_flutter/core/export.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var isLoading = false.obs;

  void login() async {
    isLoading.value = true;
    update();
    // final body = {
    //   'email': emailController.text,
    //   'password': passwordController.text,
    // };
    // final response = await LoginService().login(body);
    await Future.delayed(const Duration(seconds: 2)); // dummy delay
    final response = {'success': true}; // dummy response

    if (response['success'] == true) {
      Get.offNamed(AppRoutes.home);
    } else {
      Get.dialog(
        AlertDialog(
          title: const Text('Error'),
          content: const Text('Email atau password salah'),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('OK'),
            )
          ],
        ),
      );
    }

    isLoading.value = false;
    update();
  }
}
