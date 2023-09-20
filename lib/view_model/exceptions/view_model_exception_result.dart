import '../view_model_status.dart';

///[ViewModelExceptionResult] is the value object that translates the exception to result
class ViewModelExceptionResult {
  ViewModelStatus status;
  String? validationErrors;
  ViewModelExceptionResult({required this.status, this.validationErrors});
}
