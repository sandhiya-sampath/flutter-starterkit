import 'package:flutter_starter/rest/exceptions/exception_handler.dart';

class MixinClass with RestExceptionHandler {
  
}

void main() {
  MixinClass mixinClass = MixinClass();
  var notFound = mixinClass.createRestException(responseMessage: 'Not found', statusCode: 404);
}