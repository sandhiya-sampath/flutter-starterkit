import 'dart:convert';
import '../../constant/http_status_codes.dart';
import 'rest_exception.dart';

class UnathorizedException extends RestApiException {
  late String errorMessage;
  UnathorizedException({required String messageJson})
      : super(
            errorCode: HttpStatusCode.unauthorized.toString(),
            httpResponseMessage: messageJson,
            httpResponseStatus: HttpStatusCode.unauthorized) {
    Map<String, dynamic> json = jsonDecode(messageJson);
    errorMessage = json["message"];
  }
}
