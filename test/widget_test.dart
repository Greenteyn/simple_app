import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/main.dart';

void main() {
  testWidgets('Wait app and add ToDo', (WidgetTester tester) async {

    await tester.pumpWidget(TodoList());

    await tester.enterText(find.byType(TextField), 'First ToDo');
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    expect(find.text('First ToDo'), findsOneWidget);

        await tester.pumpWidget(TodoList());

    await tester.drag(find.byType(Dismissible), Offset(500.0, 0.0));
    await tester.pumpAndSettle();

    expect(find.text('First ToDo'), findsNothing);
  });

  // testWidgets('Scroll list', (WidgetTester tester) async {


  // });
}
