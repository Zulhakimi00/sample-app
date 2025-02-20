import 'package:sample_flutter/core/export.dart';
import 'package:sample_flutter/module/splash/screen/splash_screen.dart';

class Route {
  static const String splash = '/splash';
  static const String login = '/login';

  static final routes = [
    GetPage(name: splash, page: () => const SplashScreen()),
    // GetPage(name: login, page: () => const LoginScreen()),
  ];
}
