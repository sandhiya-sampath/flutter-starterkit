import 'dart:developer';
import 'package:flutter/foundation.dart';


/// A utility class for logging messages with different log levels.
/// The `Logger` class provides a simple interface for logging messages at different levels such as debug, info, warning, and error. 
/// In development mode, logs are printed to the console
/// In release mode, logs can be directed to a remote server or a file.

enum LogLevel { debug, info, warning, error }


class Logger {
  static void debug(String message) {
    _logMessage(LogLevel.debug, message);
  }

  static void info(String message) {
    _logMessage(LogLevel.info, message);
  }

  static void warning(String message) {
    _logMessage(LogLevel.warning, message);
  }

  static void error(dynamic error, [StackTrace? stackTrace]) {
    final errorMessage = error.toString();
    final trace = stackTrace ?? '';
    _logMessage(LogLevel.error, '$errorMessage\n$trace');
  }

  static void _logMessage(LogLevel level, String message) {
    if (!kReleaseMode) {
      /// Print logs to the console in development mode
      switch (level) {
        case LogLevel.debug:
          _printToConsole('[DEBUG] $message');
          break;
        case LogLevel.info:
          _printToConsole('[INFO] $message');
          break;
        case LogLevel.warning:
          _printToConsole('[WARNING] $message');
          break;
        case LogLevel.error:
          _printToConsole('[ERROR] $message');
          break;
      }
    } else {
      // Log to a remote server or a file in production mode
      _logToRemoteServerOrFile(level, message);
    }
  }

  static void _printToConsole(String logMessage) {
    log(logMessage);
    print(logMessage);
  }

  static void _logToRemoteServerOrFile(LogLevel level, String message) {
    // Implement your logic for logging to a remote server or a file in production
    // Example: send a network request to a logging API
  }
}
