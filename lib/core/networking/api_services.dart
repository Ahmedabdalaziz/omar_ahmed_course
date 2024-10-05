import 'package:dio/dio.dart';
import 'package:omar_ahmed_course/core/networking/api_constants.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../features/login/data/models/login_response_model.dart';

part 'api_services.g.dart';

@RestApi(
  baseUrl: "https://vcare.integration25.com",
)
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponseModel> login(@Body() Map<String, dynamic> body);

}
