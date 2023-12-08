import 'package:flutter_starter/rest/exceptions/application_exception.dart';
import 'package:flutter_test/flutter_test.dart';
import '../mock/mixin_class.dart';

void main() {
  group('Application exception and exception handler test', () {
    test('Application exception', () {
      final exception = ApplicationException(message: "This is an error");

      expect(exception.message, "This is an error");
    });

    test('Rest exception handler for NotFoundException', () {
      final exceptionHandler = MixinClass();

      // Define the exception.
      final exception = exceptionHandler.createRestException(
          responseMessage: 'Not found', statusCode: 404);

      // Check if the exception is not null and has the correct status code.
      expect(exception, isNotNull);
      expect(exception.httpResponseStatus, 404);
    });

    test('Rest exception handler for ValidationException', () {
      final exceptionHandler = MixinClass();

      // Define the exception
      final exception = exceptionHandler.createRestException(
          responseMessage: 'Bad request', statusCode: 400);

      // Check if the exception is not null and has the correct status code.
      expect(exception, isNotNull);
      expect(exception.httpResponseStatus, 400);
    });

    test('Rest exception handler for InternalServerException', () {
      final exceptionHandler = MixinClass();

      // Define the exception
      final exception = exceptionHandler.createRestException(
          responseMessage: 'Internal server error', statusCode: 500);

      // Check if the exception is not null and has the correct status code.
      expect(exception, isNotNull);
      expect(exception.httpResponseStatus, 500);
    });

    test('Rest exception handler for UnauthorizedException', () {
      final exceptionHandler = MixinClass();

      // Define the exception
      final exception = exceptionHandler.createRestException(
          responseMessage: 'Unauthorized error', statusCode: 401);

      // Check if the exception is not null and has the correct status code.
      expect(exception, isNotNull);
      expect(exception.httpResponseStatus, 401);
    });

    test('Rest exception handler for forbiden', () {
      final exceptionHandler = MixinClass();

      // Define the exception
      final exception = exceptionHandler.createRestException(
          responseMessage: 'Permission required error', statusCode: 403);

      // Check if the exception is not null and has the correct status code.
      expect(exception, isNotNull);
      expect(exception.httpResponseStatus, 403);
    });
  });
}
