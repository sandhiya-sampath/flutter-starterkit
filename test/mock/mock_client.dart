import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:http_parser/http_parser.dart' as http_parser;

abstract class HttpClient {
  Future<Map<String, dynamic>> get(Uri url, {Map<String, String>? headers});

  Future<Map<String, dynamic>> post(Uri url, Object body,
      {Map<String, String>? headers});

  Future<Map<String, dynamic>> put(Uri url, Object body,
      {Map<String, String>? headers});

  Future<Map<String, dynamic>> delete(Uri url, {Map<String, String>? headers});

  Future<http.Response> postMultipartRequest({
    required String url,
    required dynamic data,
    required List<int> bufferData,
    required String fileName,
    required String fieldName,
    http_parser.MediaType? contentType,
    List? headers,
  });

  Future<http.Response> putMultipartRequest({
    required String url,
    required dynamic data,
    required List<int> bufferData,
    required String fileName,
    required String fieldName,
    http_parser.MediaType? contentType,
    List? headers,
  });
}

class MockClient extends Mock implements http.Client {
  @override
  Future<http.Response> get(Uri url, {Map<String, String>? headers}) async {
    final mockResponseData = {'message': 'Mock GET response'};
    final mockResponseJson = jsonEncode(mockResponseData);

    return http.Response(mockResponseJson, 200, headers: {
      'content-type': 'application/json',
    });
  }

  @override
  Future<http.Response> post(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    final mockResponseData = {'message': 'Mock POST response'};
    final mockResponseJson = jsonEncode(mockResponseData);

    return http.Response(mockResponseJson, 201, headers: {
      'content-type': 'application/json',
    });
  }

  @override
  Future<http.Response> put(
    Uri url, {
    Object? body,
    Encoding? encoding,
    Map<String, String>? headers,
  }) async {
    final mockResponseData = {'message': 'Mock PUT response'};
    final mockResponseJson = jsonEncode(mockResponseData);

    return http.Response(mockResponseJson, 200, headers: {
      'content-type': 'application/json',
    });
  }

  @override
  Future<http.Response> delete(
    Uri url, {
    Object? body,
    Encoding? encoding,
    Map<String, String>? headers,
  }) async {
    final mockResponseData = {'message': 'Mock DELETE response'};
    final mockResponseJson = jsonEncode(mockResponseData);

    return http.Response(mockResponseJson, 204, headers: {
      'content-type': 'application/json',
    });
  }

  Future<http.StreamedResponse> postMultipartRequest({
    required String url,
    required dynamic data,
    required List<int> bufferData,
    required String fileName,
    required String fieldName,
    http_parser.MediaType? contentType,
    List? headers,
  }) async {
    try {
      final mockResponseData = {"message": "Mock Multipart POST response"};
      final mockResponseJson = jsonEncode(mockResponseData);

      return http.StreamedResponse(
        Stream.value(utf8.encode(mockResponseJson)),
        200,
        headers: {
          'content-type': 'text/html; charset=UTF-8',
        },
      );
    } catch (error) {
      rethrow;
    }
  }

  Future<http.StreamedResponse> putMultipartRequest({
    required String url,
    required dynamic data,
    required List<int> bufferData,
    required String fileName,
    required String fieldName,
    http_parser.MediaType? contentType,
    List? headers,
  }) async {
    try {
      final mockResponseData = {"message": "Mock Multipart POST response"};
      final mockResponseJson = jsonEncode(mockResponseData);
      return http.StreamedResponse(
        Stream.value(utf8.encode(mockResponseJson)),
        200,
        headers: {
          'content-type': 'application/json',
        },
      );
    } catch (error) {
      rethrow;
    }
  }
}
