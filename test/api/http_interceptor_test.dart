import 'package:flutter_starter/rest/http_interceptor.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  test('Test CustomHttpClient ', () async {
    final customHttpClient = CustomHttpClient(defaultHeaders);
    final request =
        http.Request('GET', Uri.parse('https://example.com/example'));
    void testFunction() async {
      await customHttpClient.send(request);
    }
    expect(testFunction, throwsException);
  });
}
