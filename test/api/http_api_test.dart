import 'package:flutter_starter/rest/http.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart' as http_parser;
import '../mock/mock_client.dart';

void main() {
  http.Client httpClient = MockClient();

  group('Testing all the APIs', () {
    test('GET API', () async {
      final url = Uri.parse('https://example.com');

      final response = await get(url: url); // Change this with httpClient.get(url) to mock the data
      expect(response.statusCode, 200);
    });

    test('POST API', () async {
      final url = Uri.parse('https://example.com');
      final data = {'key': 'Value'};
      final response = await post(url: url, data: data); // Change this with httpClient.post(url, data) to mock the data

      expect(response.statusCode, 200);
    });

    test('PUT API', () async {
      final url = Uri.parse('https://example.com');
      final data = {'key': 'Value'};
      final response = await put(url: url, data: data); // Change this with httpClient.put(url, data) to mock the data
      // Add httpClient as a parameter to test this case

      expect(response.statusCode, 200);

    });

    test('DELETE API', () async {
      final url = Uri.parse('https://example.com');
      final response = await delete(url: url, data: {}); // Change this with httpClient.delete(url, data) to mock the data
      // Add httpClient as a parameter to test this case

      expect(response.statusCode, 200);
    });

    test('postMultipartRequest API', () async {
      final url = 'https://example.com';
      final data = {'key': 'Value'};
      ;
      final bufferData = [12, 23, 65, 87];
      final fileName = 'example.jpg';
      final fieldName = 'file';
      final contentType = http_parser.MediaType('image', 'jpeg');

      final response = await postMultipartRequest(
          url: url,
          data: data,
          bufferData: bufferData,
          fileName: fileName,
          fieldName: fieldName);

      expect(response.statusCode, 200);
      expect(
        response.headers['content-type'],
        'text/html; charset=UTF-8',
      );
    });

    test('putMultiPartRequest API', () async {
      final url = 'https://example.com';
      final data = {'key': 'Value'};
      final bufferData = [12, 23, 65, 87];
      final fileName = 'example.jpg';
      final fieldName = 'file';
      final contentType = http_parser.MediaType('image', 'jpeg');

      final response = await putMultipartRequest(url: url, data: data, bufferData: bufferData, fileName: fileName, fieldName: fieldName); // Add httpClient as a parameter to test this case

      expect(response.statusCode, 200);
      expect(response.headers['content-type'], 'text/html; charset=UTF-8',);
    });
  });
}
