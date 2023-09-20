import '../../rest/exceptions/rest_exception.dart';

class DataModelException extends RestApiException {
  String messageJson;
  late String errorMessage;
  DataModelException({required this.messageJson})
      : super(httpResponseMessage: messageJson) {
    errorMessage = messageJson;
  }

  ///[getMessage] returns an error for a given field and
  ///returns null incase there is no error message for a given field
  String? getMessage({required String fieldName}) => errorMessage;
}
