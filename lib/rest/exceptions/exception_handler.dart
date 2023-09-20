import '../../constant/http_status_codes.dart';
import './not_found_exception.dart';
import 'internal_server_exception.dart';
import 'rest_exception.dart';
import './validation_exception.dart';
import 'unauthorized_exception.dart';

///[RestExceptionHandler] just enable this mixin to come  throw right type of exception

mixin RestExceptionHandler {
  RestApiException createRestException(
      {int statusCode = 0, required dynamic responseMessage}) {
    String message = responseMessage.toString();
    late RestApiException exception;
    try {
      switch (statusCode) {
        case HttpStatusCode.notFound:
          exception = NotFoundException(messageJson: message);
          break;
        case HttpStatusCode.badRequest:
          exception = ValidationException(messageJson: message);
          break;
        case HttpStatusCode.internalServerError:
          exception = InternalServerException(messageJson: message);
          break;
        case HttpStatusCode.unauthorized:
          exception = UnathorizedException(messageJson: message);
          break;
        case HttpStatusCode.forbidden:
          exception = InternalServerException(messageJson: message);
          break;
        default:
          exception = RestApiException(
              httpResponseStatus: statusCode, httpResponseMessage: message);
      }
    } catch (error) {
      exception = RestApiException(
          httpResponseStatus: statusCode, httpResponseMessage: message);
    }
    return exception;
  }
}
