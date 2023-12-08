import 'dart:convert';
import '../../constant/http_status_codes.dart';
import 'application_exception.dart';

///[RestApiException] is the base of all the exceptions thrown from API Layer
///All exceptions will have an error code to identify what type of exception itis
/// [message] to identify the exact error message
/// [errorCode] contains the application error code that uniquely identifies the error
/// [httpResponseStatus] contains the http status code like 404, 400, 500 etc
/// [httpResponseMessage] contains the http response message that was sent by the API
class RestApiException extends ApplicationException {
  static const String errorCodeAttribute = "errorCode";
  static const String messageAttribute = "message";
  String? errorCode;
  int? httpResponseStatus;
  String? httpResponseMessage;
  RestApiException({
    this.errorCode,
    this.httpResponseMessage,
    this.httpResponseStatus,
  }) : super(
            message: httpResponseMessage ??
                "RestApiException:No http Response Message") {
    //populate other fields in case the message is not null
    _parseMessageJson(httpResponseMessage ?? "");
  }

  @override
  String toString() {
    return """{message:$message,
              errorCode:$errorCode,
              httpResponseStatus:$httpResponseStatus,
              httpResponseMessage:$message}""";
  }

  void _parseMessageJson(String messageJson) {
    try {
      Map<String, dynamic> incomingJson = jsonDecode(messageJson);
      errorCode = incomingJson[errorCodeAttribute];
      message = incomingJson[messageAttribute];
    } catch (exception) {
      // this means the resopnse body was not json string
      //this might occcur when  there is a system error
      errorCode = "$HttpStatusCode.internalServerError";
      message = "An unknown server error occurred";
    }
  }
}
