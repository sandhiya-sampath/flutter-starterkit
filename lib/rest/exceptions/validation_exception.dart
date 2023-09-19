import 'dart:convert';
import '../../constant/http_status_codes.dart';
import 'rest_exception.dart';

///[ValidationException] is thrown when an API throws a business validation error
///for ex: invalid customer id, Order id does
///in addition to all the other fields validation Exception will also contain the
///field and its specific error messages

class ValidationException extends RestApiException {
  late String errorMessage;
  ValidationException({required String messageJson})
      : super(
            errorCode: HttpStatusCode.badRequest.toString(),
            httpResponseStatus: HttpStatusCode.badRequest,
            httpResponseMessage: messageJson) {
    Map<String, dynamic> json = jsonDecode(messageJson);
    super.errorCode = json[RestApiException.errorCodeAttribute];
    errorMessage = messageJson;
  }

  ///[getMessage] returns an error for a given field and
  ///returns null incase there is not error message for a given field
  String? getMessage({required String fieldName}) => errorMessage;
}
