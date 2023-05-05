import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_ninja/features/on-boarding/presentation/screens/on_boarding_screen.dart';
import 'package:food_ninja/utils/app_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  late AppRouter router;

  setUp(() {
    router = AppRouter();
  });

  Widget app() {
    return ResponsiveApp(
      builder: (_) => MaterialApp.router(
        routerConfig: router.config(),
      ),
    );
  }

  group('AppRouter using AutoRoute', () {
    test('checks routes number', () {
      expect(router.routes.length, equals(1));
    });
  });

  testWidgets('Route to OnBoarding Screen as Initial Screen',
      (widgetTester) async {
    await widgetTester.pumpWidget(app());
    await widgetTester.pumpAndSettle();
    expect(find.byType(OnBoardingScreen), findsOneWidget);
  });
}
