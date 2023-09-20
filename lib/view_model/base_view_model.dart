import 'package:flutter/material.dart';
import 'exceptions/view_model_exception_adapter.dart';
import 'view_model_status.dart';

///base_view_model contains the common
///properties and methods needed for all a
///other view models

abstract class BaseViewModel extends ChangeNotifier
    with ViewModelExceptionAdapter {
  // stores the current view model status
  ViewModelStatus status = ViewModelStatus.completed;
  //gets all the error messages that might be generated during the course of interaction of the model
  String? errorMessages;
  Function? setStatusFunction;

  BaseViewModel({this.setStatusFunction}) {
    //if it is null then call regular status
    setStatusFunction ??= setStatus;
  }

  setStatus(ViewModelStatus newStatus) {
    status = newStatus;
    notifyListeners();
  }
}
