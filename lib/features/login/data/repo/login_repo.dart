import 'package:omar_ahmed_course/core/networking/api_result.dart';
import 'package:omar_ahmed_course/core/networking/api_services.dart';

import '../models/login_request_model.dart';
import '../models/login_response_model.dart';

class LoginRepo {
  final ApiService apiService;

  LoginRepo(this.apiService);

  Future<LoginResponseModel> login(LoginRequestModel loginRequest) async {
    try {
      return apiService.login(loginRequest.toJson());
    } catch (error) {
      throw ApiResult.failure(error.toString());
    }
  }
}
