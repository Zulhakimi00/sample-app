// ignore_for_file: constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:sample_flutter/core/export.dart';

enum HttpMethod { GET, POST, POSTWITHUPLOAD, POSTCHECKDOMAIN, POSTWITHUPLOAD2 }

class ApiHandler {
  getResponseData(
      HttpMethod type, String url, dynamic body, dynamic uploadImage) async {
    final fullUrl = ApiSetting().baseUrl + url;
    var response;

    switch (type) {
      case HttpMethod.GET:
        response = await ApiService().fetchDataUsingGet(fullUrl);
        break;

      case HttpMethod.POSTCHECKDOMAIN:
        response =
            await ApiService().fetchDataUsingPostCheckDomain(fullUrl, body);
        break;

      case HttpMethod.POST:
        response = await ApiService().fetchDataUsingPost(fullUrl, body);
        break;

      case HttpMethod.POSTWITHUPLOAD:
        response = await ApiService()
            .fetchDataUsingPostWithImage(fullUrl, body, uploadImage);
        break;

      case HttpMethod.POSTWITHUPLOAD2:
        response = await ApiService()
            .fetchAddImageUsingPost(fullUrl, body, uploadImage);
        break;
    }

    return response;
  }
}
