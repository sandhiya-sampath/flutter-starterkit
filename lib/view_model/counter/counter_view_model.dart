import 'package:flutter_starter/util/logger.dart';
import '../../rest/exceptions/application_exception.dart';
import '../base_view_model.dart';
import '../exceptions/view_model_exception_result.dart';
import '../view_model_status.dart';

class CounterViewModel extends BaseViewModel {
  @override
  String? errorMessages;
  int counter = 0;
  //send the set status function in in case it is coming from the caller
  CounterViewModel({Function? setStatusFunction})
      : super(setStatusFunction: setStatusFunction);

  void incrementCounter() {
    counter++;
    notifyListener;
  }

  Future<void> sampleAsynFunction(uniqueIdentifier) async {
    try {
      setStatus(ViewModelStatus.loading);
      setStatus(ViewModelStatus.completed);
    } on ApplicationException catch (exception) {
      Logger.error(exception);
      ViewModelExceptionResult result = exceptionToViewModelResult(exception);
      errorMessages = result.validationErrors;
      setStatus(result.status);
    }
  }
}
