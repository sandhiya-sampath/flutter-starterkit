import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_starter/rest/exceptions/application_exception.dart';
import 'package:flutter_starter/rest/exceptions/exception_handler.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'mock/mock_client.dart';

void main() {
  testWidgets('Application exception', (widgetTester) async {

    final exception = ApplicationException(message: "This is an error");

    expect(exception.message, "This is an error");
  });

  testWidgets('Rest exception handler', (widgetTester) async {
    final exception = MixinClass();
  });
}

