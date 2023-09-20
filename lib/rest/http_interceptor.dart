///Base class for the all the http calls
///creates a single http custom client with the required header and handles errors
///through out the app life time
///authour - Sandhiya Sampath
import 'package:flutter_starter/constant/http_status_codes.dart';
import 'package:flutter_starter/rest/exceptions/exception_handler.dart';
import 'package:http/http.dart' as http;


class CustomHttpClient extends http.BaseClient with RestExceptionHandler {
  final Map<String, String> defaultHeaders;

  CustomHttpClient(this.defaultHeaders);

  final http.Client _httpClient = http.Client();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    // Intercept and modify the request here, if needed
    // For example, you can add headers
    request.headers.addAll(defaultHeaders);

    // Proceed with the request and capture the response
    final http.StreamedResponse response = await _httpClient.send(request);

    // Intercept and process the response here and handle error globally
    if (response.statusCode == HttpStatusCode.ok) {
      return response;
    } else {
      // Convert StreamedResponse to Response
      final bytes = await response.stream.toBytes();
      final httpResponse = http.Response.bytes(
        bytes,
        response.statusCode,
        headers: response.headers,
        request: response.request,
      );
      throw createRestException(
          statusCode: httpResponse.statusCode,
          responseMessage: httpResponse.body);
    }
  }
}

final Map<String, String> defaultHeaders = {
  'Content-Type': 'application/json',
};
 
//use this client to make http network calls
final httpClient = CustomHttpClient(defaultHeaders);
