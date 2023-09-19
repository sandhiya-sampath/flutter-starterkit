import 'dart:convert';
import '../../constant/http_status_codes.dart';
import 'rest_exception.dart';

class InternalServerException extends RestApiException {
  late String errorMessage;
  InternalServerException({required String messageJson})
      : super(
            errorCode:
                HttpStatusCode.internalServerError.toString(),
            httpResponseMessage: messageJson,
            httpResponseStatus: HttpStatusCode.internalServerError) {
    Map<String, dynamic> json = jsonDecode(messageJson);
    errorMessage = json["message"];
  }
}
