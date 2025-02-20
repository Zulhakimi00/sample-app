import 'package:sample_flutter/core/export.dart';

class ApiService {
  fetchDataUsingGet(String url) async {
    final response = await get(
      Uri.parse(url),
      headers: ApiSetting().setHeaders(),
    );

    final responseString = jsonDecode(response.body);
    if (responseString['error'] == false) {
      return {
        'success': true,
        'data': responseString['data'],
      };
    } else {
      return {
        'success': false,
        'message': responseString['message'],
      };
    }
  }

  fetchDataUsingPost(String url, dynamic body) async {
    final response = await post(
      Uri.parse(url),
      headers: ApiSetting().setHeaders(),
      body: jsonEncode(body),
    );

    final responseString = jsonDecode(response.body);

    if (responseString['error'] == false) {
      return {
        'success': true,
        'message': responseString['message'],
        'data': responseString['data'],
      };
    } else {
      return {
        'success': false,
        'message': responseString['message'],
      };
    }
  }

  fetchDataUsingPostCheckDomain(String url, dynamic body) async {
    try {
      final response = await post(
        Uri.parse(url),
        body: body,
      );

      if (response.statusCode == 404) {
        return {
          'success': false,
          'message': 'Url Not Found',
        };
      } else {
        final responseString = jsonDecode(response.body);

        if (responseString['error'] == false) {
          return {
            'success': true,
            'message': responseString['message'],
            'data': responseString['data'],
          };
        } else {
          return {
            'success': false,
            'message': responseString['message'],
          };
        }
      }
    } catch (e) {
      return {
        'success': false,
        'message': 'Something wrong, please try again',
      };
    }
  }

  fetchDataUsingPostWithImage(
      String url, dynamic body, dynamic uploadImage) async {
    var request = MultipartRequest(
      'POST',
      Uri.parse(url),
    )
      ..headers.addAll(ApiSetting().setImageHeaders())
      ..fields.addAll(body);

    await uploadImage!.forEach((file) async {
      request.files.add(await MultipartFile.fromPath('image[]', file));
    });

    // if (body != null) {
    //   request.fields['buyback_id'] = body.toString();
    // }

    final responseString = await request.send();
    final respStr = await responseString.stream.bytesToString();

    final responseString2 = jsonDecode(respStr);

    if (responseString2['error'] == false) {
      return {
        'success': true,
        'message': responseString2['message'],
        'data': responseString2['data'],
      };
    } else {
      return {
        'success': false,
        'message': responseString2['message'],
      };
    }
  }

  fetchAddImageUsingPost(
      String url, dynamic body, List<MultipartFile> uploadImage) async {
    var request = MultipartRequest(
      'POST',
      Uri.parse(url),
    )
      ..headers.addAll(ApiSetting().setImageHeaders())
      ..fields.addAll(body)
      ..files.addAll(uploadImage);

    final responseString = await request.send();
    final respStr = await responseString.stream.bytesToString();

    final responseString2 = jsonDecode(respStr);
    if (responseString2['error'] == false) {
      return {
        'success': true,
        'message': responseString2['message'],
        'data': responseString2['data'],
      };
    } else {
      return {
        'success': false,
        'message': responseString2['message'],
      };
    }
  }
}
