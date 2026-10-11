// Widget test de taxonomy — verifica el counter real de la app
// y el drawer de artículos.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:drawer/main.dart';

void main() {
  testWidgets('counter arranca en 0 y sube al tocar el FAB', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('2'), findsOneWidget);
  });

  testWidgets('el drawer lista los artículos', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.byIcon(Icons.menu));
    await tester.pumpAndSettle();

    expect(find.text('Articles'), findsOneWidget);
    expect(find.text('This is my first article.'), findsOneWidget);
    expect(find.text('This is my seventh article.'), findsOneWidget);
  });
}
