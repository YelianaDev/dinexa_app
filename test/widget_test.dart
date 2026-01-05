import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dinexa_app/app/dinexa_app.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const DinexaApp());

    // Verify that our counter starts at 0.
    // Nota: Si tu aplicación no tiene un contador, este test fallará,
    // pero el error de compilación se habrá resuelto.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
