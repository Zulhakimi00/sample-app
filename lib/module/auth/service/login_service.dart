import 'package:sample_flutter/config/api_const.dart';
import 'package:sample_flutter/core/export.dart';

class LoginService {
  login(dynamic body) async {
    var response = await ApiHandler()
        .getResponseData(HttpMethod.POST, ApiConst.login, body, null);

    return response;
  }
}
