/* import 'package:dio/dio.dart';
import 'package:random_color/api/api_paths.dart';
import 'package:random_color/api/helpers/interceptor.dart';

class BaseApiService {
  static const String _contentType = 'Content-Type';
  Dio? _dio = Dio();

  BaseApiService() {
    BaseOptions dioOptions = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(milliseconds: 6000),
      receiveTimeout: const Duration(milliseconds: 8000),
      headers: {_contentType: 'application/json'},
    );

    _dio = Dio(dioOptions)
      ..interceptors.add(LoggingInterceptors(
        dio: getDio()!,
      ));
  }

  Dio? getDio() => _dio;

  String handleError(DioError dioError) {
    String message = "";

    switch (dioError.type) {
      case DioErrorType.cancel:
        message = "Request to API server was cancelled";
        break;
      case DioErrorType.connectionTimeout:
        message = "Connection timeout with API server";
        break;
      case DioErrorType.receiveTimeout:
        message = "Receive timeout in connection with API server";
        break;
      case DioErrorType.badResponse:
        message = _handleError(
          dioError.response?.statusCode,
          dioError.response?.statusMessage,
        );
        break;
      case DioErrorType.sendTimeout:
        message = "Send timeout in connection with API server";
        break;
      case DioErrorType.unknown:
        if (dioError.message!.contains("SocketException")) {
          message = 'No Internet';
          break;
        }
        message = "Unexpected error occurred";
        break;
      default:
        message = "Something went wrong";
        break;
    }
    return message;
  }

  String _handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return 'Bad request';
      case 401:
        return 'Unauthorized';
      case 403:
        return 'Forbidden';
      case 404:
        return error.toString();
      case 500:
        return 'Internal server error';
      case 502:
        return 'Bad gateway';
      default:
        return 'Oops something went wrong';
    }
  }

}
 */