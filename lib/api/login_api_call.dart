/* import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pop/api/api_paths.dart';
import 'package:pop/api/base_api_service.dart';
import 'package:pop/model/responseModel/login/login.dart';

class LoginApiCall extends BaseApiService {
  late Login loginResponse;
  late Response response;
  Dio dio = Dio();

  Future<Login> callApi({required phone, required password}) async {
    try {
      var response = await getDio()!.post(
        loginPath,
        queryParameters: {"phone": phone, "password": password},
      );
      loginResponse = Login.fromJson(response.data);
      return loginResponse;
    } on DioError catch (e) {
      if (kDebugMode) {
        log(e.type.toString());
        log(e.response.toString());
      }
      return Login(
          message: e.response!.data != null
              ? e.response!.data['message']
              : handleError(e));
    }
  }
}
 */