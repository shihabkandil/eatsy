import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_ninja/common/widgets/gradient_text.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  group('GradientText widget', () {
    Gradient gradient = const LinearGradient(
      colors: [Colors.red, Colors.blue],
    );

    String sampleText = 'Sample Text';
    late Widget foodTestApp;

    setUp(() {
      foodTestApp = ResponsiveApp(
        builder: (_) => MaterialApp(
          home: Scaffold(
            body: GradientText(
              text: sampleText,
              gradient: gradient,
              style: TextStyle(fontSize: 1.sh),
            ),
          ),
        ),
      );
    });

    testWidgets('Renders text with style', (widgetTester) async {
      await widgetTester.pumpWidget(foodTestApp);
      final textFinder = find.text(sampleText);
      expect(textFinder, findsOneWidget);
      final textWidget = widgetTester.widget<Text>(textFinder);
      expect(textWidget.style, TextStyle(fontSize: 1.sh));
    });

    testWidgets('Applies shaderMask', (widgetTester) async {
      await widgetTester.pumpWidget(foodTestApp);
      final shaderMaskFinder = find.byType(ShaderMask);
      expect(shaderMaskFinder, findsOneWidget);

      final shaderMaskWidget =
          widgetTester.widget<ShaderMask>(shaderMaskFinder);
      expect(shaderMaskWidget.blendMode, equals(BlendMode.srcIn));
      expect(shaderMaskWidget.shaderCallback, isNotNull);
    });
  });
}
