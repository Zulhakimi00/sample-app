import 'package:sample_flutter/core/export.dart';
import 'package:sample_flutter/module/user/model/home_model.dart';

class UserHomeController extends GetxController {
  RxBool isLoading = true.obs;
  UserHomeModel? model;
  @override
  void onInit() {
    super.onInit();
    fetchApi();
  }

  fetchApi() async {
    isLoading(true);
    update();

    // final body = {
    //   'user_id': '1',
    // };
    // final response = await UserHomeService().fetchApi(body);
    await Future.delayed(const Duration(seconds: 2)); // dummy delay
    final response = {'success': true}; // dummy response

    if (response['success'] == true) {
      // model = userHomeModelFromJson(response['data']);

      isLoading(false);
      update();
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
  }
}
