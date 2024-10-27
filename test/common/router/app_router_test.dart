import 'package:eatsy/common/router/app_router.dart';
import 'package:eatsy/features/on_boarding/presentation/screens/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late AppRouter router;

  setUp(() {
    router = AppRouter();
  });

  Widget app() {
    return MaterialApp.router(
      routerConfig: router.config(),
    );
  }

  testWidgets('Route to OnBoarding Screen as Initial Screen',
      (widgetTester) async {
    await widgetTester.pumpWidget(app());
    await widgetTester.pumpAndSettle();
    expect(find.byType(OnBoardingScreen), findsOneWidget);
  });
}
