import 'package:flutter_starter/view_model/view_model_status.dart';

import '../../rest/exceptions/application_exception.dart';
import '../../rest/exceptions/unauthorized_exception.dart';
import '../../rest/exceptions/internal_server_exception.dart';
import '../../rest/exceptions/not_found_exception.dart';
import '../../rest/exceptions/validation_exception.dart';
import 'data_model_exception.dart';
import 'view_model_exception_result.dart';

///[ViewModelExceptionAdapter] converts exception to view model status

mixin ViewModelExceptionAdapter {
  ViewModelExceptionResult exceptionToViewModelResult(
      ApplicationException exception) {
    late ViewModelExceptionResult result;
    Type exceptionType = exception.runtimeType;

    switch (exceptionType) {
      case NotFoundException:
        NotFoundException notFoundException = exception as NotFoundException;
        result = ViewModelExceptionResult(
            status: ViewModelStatus.notFound,
            validationErrors: notFoundException.errorMessage);
        break;
      case ValidationException:
        ValidationException validationException =
            exception as ValidationException;
        result = ViewModelExceptionResult(
            status: ViewModelStatus.validationError,
            validationErrors: validationException.errorMessage);
        break;
      case DataModelException:
        DataModelException dataModelException = exception as DataModelException;
        result = ViewModelExceptionResult(
            status: ViewModelStatus.dataValidationError,
            validationErrors: dataModelException.errorMessage);
        break;
      case InternalServerException:
        InternalServerException internalServerErrorException =
            exception as InternalServerException;
        result = ViewModelExceptionResult(
            status: ViewModelStatus.internalServerError,
            validationErrors: internalServerErrorException.errorMessage);
        break;
      case UnathorizedException:
        UnathorizedException unathorizedException =
            exception as UnathorizedException;
        result = ViewModelExceptionResult(
            status: ViewModelStatus.unathorizedError,
            validationErrors: unathorizedException.errorMessage);
        break;
      default:
        result = ViewModelExceptionResult(
            status: ViewModelStatus.unknownError,
            validationErrors: exception.message);
        break;
    }

    return result;
  }
}
