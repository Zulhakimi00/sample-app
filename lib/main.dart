import 'package:sample_flutter/controller/theme_controller.dart';
import 'package:sample_flutter/lang/translations.dart';
import 'package:sample_flutter/theme/theme.dart';

import 'core/export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        translations: AppTranslation(), // Import translation
        locale: const Locale('en', 'US'), // Default language
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: Get.find<ThemeController>().themeMode,
        initialRoute: AppRoutes.splash,
        getPages: AppRoutes.routes,
      );
    });
  }
}
