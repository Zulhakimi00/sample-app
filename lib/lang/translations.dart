import 'package:get/get.dart';
import 'en.dart';
import 'ms.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en,
        'ms_MY': ms,
      };
}
