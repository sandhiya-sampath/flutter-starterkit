import 'dart:convert';
import 'package:http/http.dart' as http;
import 'http_interceptor.dart';
import 'package:http_parser/http_parser.dart' as http_parser;

Future<http.Response> get(
    {required Uri url}) async {
  try {
    http.Response response = await httpClient.get(url);
    return response;
  } catch (error) {
    rethrow;
  }
}

Future<http.Response> post(
    {required Uri url,
    required Map<dynamic, dynamic> data}) async {
  try {
    final String encodedData = jsonEncode(data);
    http.Response response = await httpClient.post(url, body: encodedData);
    return response;
  } catch (error) {
    rethrow;
  }
}

Future<http.Response> delete(
    {required Uri url,
    required Map<dynamic, dynamic> data}) async {
  try {
    final String encodedData = jsonEncode(data);
    http.Response response = await httpClient.delete(url, body: encodedData);
    return response;
  } catch (error) {
    rethrow;
  }
}

Future<http.Response> put(
    {required Uri url,
    required Map<dynamic, dynamic> data}) async {
  try {
    final String encodedData = jsonEncode(data);
    http.Response response = await httpClient.put(url, body: encodedData);
    return response;
  } catch (error) {
    rethrow;
  }
}

Future<http.StreamedResponse> postMultipartRequest(
    {required String url,
    required dynamic data,
    required List<int> bufferData,
    required String fileName,
    required String fieldName,
    http_parser.MediaType? contentType,
    List? headers}) async {
  try {
    http.MultipartRequest request =
        http.MultipartRequest('POST', Uri.parse(url));
    request.files.add(http.MultipartFile.fromBytes(fieldName, bufferData,
        filename: fileName, contentType: contentType));
    request.fields[fieldName] = json.encode(data);
    http.StreamedResponse response = await httpClient.send(request);
    return response;
  } catch (error) {
    rethrow;
  }
}

Future<http.StreamedResponse> putMultipartRequest(
    {required String url,
    required dynamic data,
    required List<int> bufferData,
    required String fileName,
    required String fieldName,
    http_parser.MediaType? contentType,
    List? headers}) async {
  try {
    http.MultipartRequest request =
        http.MultipartRequest('PUT', Uri.parse(url));
    request.files.add(http.MultipartFile.fromBytes(fieldName, bufferData,
        filename: fileName, contentType: contentType));
    request.fields[fieldName] = json.encode(data);
    http.StreamedResponse response = await httpClient.send(request);
    return response;
  } catch (error) {
    rethrow;
  }
}
