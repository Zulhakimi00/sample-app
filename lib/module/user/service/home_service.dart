import 'package:sample_flutter/config/api_const.dart';
import 'package:sample_flutter/core/export.dart';

class UserHomeService {
  fetchApi(dynamic body) async {
    var response = await ApiHandler()
        .getResponseData(HttpMethod.POST, ApiConst.homepage, body, null);

    return response;
  }
}
