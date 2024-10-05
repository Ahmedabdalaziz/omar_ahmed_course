class ApiErrorHandler {
  static String handleError(int statusCode) {
    switch (statusCode) {
      case 400:
        return ApiErrorMessages.badRequest;
      case 401:
        return ApiErrorMessages.unauthorized;
      case 403:
        return ApiErrorMessages.forbidden;
      case 404:
        return ApiErrorMessages.notFound;
      case 500:
        return ApiErrorMessages.internalServerError;
      case 503:
        return ApiErrorMessages.serviceUnavailable;
      default:
        return ApiErrorMessages.unknownError;
    }
  }
}

class ApiErrorMessages {
  static const String badRequest = "Bad Request";
  static const String unauthorized = "Unauthorized";
  static const String forbidden = "Forbidden";
  static const String notFound = "Not Found";
  static const String internalServerError = "Internal Server Error";
  static const String serviceUnavailable = "Service Unavailable";
  static const String unknownError = "Unknown Error";
}
