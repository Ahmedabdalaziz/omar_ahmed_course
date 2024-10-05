import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static const Duration timeOut = Duration(seconds: 30);
  static Dio? dio;

  static Dio getDio() {
    if (dio == null) {
      dio = Dio();
      dio!.options
        ..connectTimeout = timeOut
        ..receiveTimeout = timeOut;
      return dio!;
    }
    return dio!;
  }

  static void addDioInter() {
    dio!.interceptors.add(
        PrettyDioLogger(
      requestBody: true,
      responseBody: true,
      requestHeader: true,
      responseHeader: true,
    ));
  }
}
