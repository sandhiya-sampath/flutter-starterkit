///[ApplicationException] is the base of all the other exceptions in the application
///it needs to be inherited by all the exceptions within the application

class ApplicationException implements Exception {
  ApplicationException? rootCause;
  String message;
  //captures the root case of the exception in case nested exceptions are being thrown
  ApplicationException({required this.message, this.rootCause}){
   message = message;
  }
}
