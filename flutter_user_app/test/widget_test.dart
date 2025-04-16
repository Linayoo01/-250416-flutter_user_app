// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_user_app/main.dart';

void main() {
  testWidgets('Home page smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(const ProviderScope(child: MyApp()));

    // Verify initial state
    expect(find.text('이름: 불러오는 중...'), findsOneWidget);
    expect(find.text('나이: '), findsOneWidget);
    expect(find.text('불러온 시간: '), findsOneWidget);

    // Verify that the fetch button exists
    expect(find.text('정보 가져오기'), findsOneWidget);

    // Tap the fetch button and trigger a frame
    await tester.tap(find.text('정보 가져오기'));
    await tester.pump();

    // Wait for the loading delay
    await tester.pump(const Duration(seconds: 1));

    // Verify that the user data is displayed
    expect(find.text('이름: 이지원'), findsOneWidget);
    expect(find.text('나이: 20'), findsOneWidget);
    expect(find.textContaining('불러온 시간:'), findsOneWidget);
  });
}
