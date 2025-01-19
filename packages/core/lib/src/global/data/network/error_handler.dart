import 'package:core/src/global/data/network/error_model.dart';
import 'package:dio/dio.dart';

String errorHandler(error) {
  String errorDescription = "";
  if (error is Exception) {
    try {
      if (error is DioException) {
        switch (error.type) {
          case DioExceptionType.cancel:
            errorDescription = "Request to API server was cancelled";
            break;

          case DioExceptionType.receiveTimeout:
            errorDescription = "Receive timeout in connection with API server";
            break;
          case DioExceptionType.badResponse:
            if (error.response!.data == null) {
              errorDescription =
                  "Failed to load data - status code: ${error.response!.statusCode}";
            } else {
              Map map;
              try {
                map = error.response!.data;
              } catch (e) {
                map = {};
              }

              if (map['error_message'] == null) {
                if (map['msg'] == null) {
                  errorDescription =
                      map['message'] ?? "${error.response?.data}";
                } else {
                  errorDescription = map['msg'] ?? map['message'];
                }
              } else if (error.response?.statusCode == 600) {
                errorDescription =
                    "${map['errors'][0]["field"]} ${map['errors'][0]["message"]}";
              } else {
                errorDescription = map['error_message'];
              }
            }

            break;
          case DioExceptionType.sendTimeout:
            errorDescription = "Send timeout with server";
            break;
          case DioExceptionType.connectionTimeout:
            // TODO: Handle this case.
            break;
          case DioExceptionType.badCertificate:
            // TODO: Handle this case.
            break;

          case DioExceptionType.connectionError:
            // TODO: Handle this case.
            break;
          case DioExceptionType.unknown:
            // TODO: Handle this case.
            break;
          default:
            return "Failed";
        }
      } else {
        errorDescription = "Unexpected error occurred";
      }
    } on FormatException catch (e) {
      errorDescription = e.toString();
    }
  } else {
    errorDescription = "is not a subtype of exception";
  }
  return errorDescription.isEmpty ? "Failed" : errorDescription;
}
