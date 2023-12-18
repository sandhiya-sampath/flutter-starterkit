import 'package:flutter_starter/model/User.dart';
import 'package:flutter_starter/service/index.dart';
import 'package:flutter_starter/util/logger.dart';
import '../../rest/exceptions/application_exception.dart';
import '../base_view_model.dart';
import '../exceptions/view_model_exception_result.dart';
import '../view_model_status.dart';

class UserViewModel extends BaseViewModel {

  List<User> users=[];
  @override

  
  //send the set status function in in case it is coming from the caller
  UserViewModel({Function? setStatusFunction})
      : super(setStatusFunction: setStatusFunction);

  

  getUserDetail() async {
    try {
      setStatus(ViewModelStatus.loading);
      users=await userService.getUserDetails();
      setStatus(ViewModelStatus.completed);
    } on ApplicationException catch (exception) {
      Logger.error(exception);
      ViewModelExceptionResult result = exceptionToViewModelResult(exception);
      // errorMessages = result.validationErrors;
      setStatus(result.status);
    }
  }
}
