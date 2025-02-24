import 'package:sample_flutter/controller/theme_controller.dart';
import 'package:sample_flutter/core/export.dart';
import 'package:sample_flutter/module/auth/controller/login_controller.dart';
import 'package:sample_flutter/widget/input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    return Scaffold(
      body: GetBuilder<LoginController>(
        init: LoginController(),
        builder: (ctrl) {
          return Container(
            padding: const EdgeInsets.all(20),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'sign_in'.tr,
                    style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor),
                  ),
                  const HeightPrimarySpacer(),
                  Text(
                    'login_message'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const HeightPrimarySpacer(),
                  CustomInput(title: 'Email', hint: 'example@gmail.com'),
                  const HeightPrimarySpacer(),
                  CustomInput(
                      title: 'Password', hint: '******', obscureText: true),
                  const HeightPrimarySpacer(),
                  PrimaryButton(
                      isLoading: ctrl.isLoading.value,
                      title: 'Sign in',
                      onPressed: () {
                        // ctrl.login();
                        themeController.toggleTheme();
                      })
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
