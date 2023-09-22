import 'dart:convert';

import 'package:flutter_starter/rest/exceptions/exception_handler.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';


class MockClient extends Mock implements http.Client {

  @override
  Future<http.Response> get(Uri url, {Map<String, String>? headers}) async {

    return http.Response('{"message": "Mocked GET response}', 200);
  }

  @override
  Future<http.Response> post(Uri url, {Map<String, String>? headers, Object? body, Encoding? encoding}) async {

    return http.Response('{"message": "Mocked POST response"}', 201);
  }
}


class MixinClass with RestExceptionHandler {
  
}

void main() {
  MixinClass mixinClass = MixinClass();
  var notFound = mixinClass.createRestException(responseMessage: 'Not found', statusCode: 404);
  print('not fount --> $notFound');
  // return notFound;
}