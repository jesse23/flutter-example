// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:few_flutter/TestWidget.dart';
import 'package:few_flutter/TestView.dart';

void main() {
  testWidgets('Test TestWidget', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(TestWidget(name: 'Test',));

    // Verify that our counter starts at 0.
    expect(find.text('Hello Test!!'), findsOneWidget);

  });

  testWidgets('Test TestView', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(TestView(title: 'Test'));

    // Verify that our counter starts at 0.
    expect(find.text('7'), findsOneWidget);
    expect(find.text('8'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.bySemanticsLabel('+1'));
    await tester.pump();
    // Verify that our counter has incremented.
    expect(find.text('7'), findsNothing);
    expect(find.text('8'), findsOneWidget);
  });
}