import 'dart:convert';
import '../../constant/http_status_codes.dart';
import 'rest_exception.dart';

///Service layer throws not found exception in case the requested resource is not located
class NotFoundException extends RestApiException {
  late String errorMessage;
  NotFoundException({required String messageJson})
      : super(
            errorCode: HttpStatusCode.notFound.toString(),
            httpResponseStatus: HttpStatusCode.notFound,
            httpResponseMessage: messageJson) {
    Map<String, dynamic> json = jsonDecode(messageJson);
    errorMessage = json["message"];
  }
}
