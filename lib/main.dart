import 'core/export.dart';
import 'route/route.dart';

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
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: false,
          brightness: Brightness.light,
        ),
        initialRoute: AppRoutes.splash,
        getPages: AppRoutes.routes,
      );
    });
  }
}
