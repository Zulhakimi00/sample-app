import 'package:sample_flutter/core/export.dart';
import 'package:sample_flutter/module/splash/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: GetBuilder<SplashController>(
        init: SplashController(),
        builder: (ctrl) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(ImagePath.logo,
                    width: 150), // Ganti dengan logo sendiri
                const SizedBox(height: 20),
                const CircularProgressIndicator(
                    color: Colors.white), // Animasi loading
              ],
            ),
          );
        },
      ),
    );
  }
}
