import 'package:flutter/material.dart';

import 'exceptions/view_model_exception_adapter.dart';
import 'view_model_status.dart';

/// BaseViewModel contains common properties and methods
/// needed for all other view models.
abstract class BaseViewModel extends ChangeNotifier with ViewModelExceptionAdapter {
  // Private field for status
  ViewModelStatus _status = ViewModelStatus.completed;
  
  // Private field for error messages
  String? _errorMessages;
  
  // Private field for setStatus function
  Function(ViewModelStatus)? setStatusFunction;

  BaseViewModel({this.setStatusFunction}) {
    //if it is null then call regular status
    setStatusFunction ??= setStatus;
  }

  // Getter for status
  ViewModelStatus get status => _status;

  // Getter for error messages
  String? get errorMessages => _errorMessages;

  // Default implementation of setStatus
  void setStatus(ViewModelStatus newStatus) {
    _status = newStatus;
    notifyListeners();
  }
}
