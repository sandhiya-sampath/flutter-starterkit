// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_starter/my_widget.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_starter/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });

  // This is to test the single widget
  testWidgets('Test FloatingActionButton', (widgetTester) async {
    await widgetTester.pumpWidget(MyApp());

    final incrementButtonFinder = find.byTooltip('Increment');
    expect(incrementButtonFinder, findsOneWidget);

    final fabFinder = find.byIcon(Icons.add);
    expect(fabFinder, findsOneWidget);

    await widgetTester.tap(fabFinder);
    await widgetTester.pump();
  });

  testWidgets('MyWidget has a title and message', (tester) async {
    await tester.pumpWidget(const MyWidget(title: 'T', message: 'M'));

    final titleFinder = find.text('T');
    final messageFinder = find.text('M');

    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });

}

