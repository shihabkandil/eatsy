import 'package:eatsy/common/widgets/gradient_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../app_pumper.dart';

void main() {
  group('GradientText widget', () {
    Gradient gradient = const LinearGradient(
      colors: [Colors.red, Colors.blue],
    );

    String sampleText = 'Sample Text';
    late Widget foodTestApp;

    setUp(() {
      foodTestApp =  AppPumper(
          child: Scaffold(
            body: GradientText(
              text: sampleText,
              gradient: gradient,
              style: const TextStyle(fontSize: 12),
            ),
          ),
      );
    });

    testWidgets('Renders text with style', (widgetTester) async {
      await widgetTester.pumpWidget(foodTestApp);
      final textFinder = find.text(sampleText);
      expect(textFinder, findsOneWidget);
      final textWidget = widgetTester.widget<Text>(textFinder);
      expect(textWidget.style, const TextStyle(fontSize: 12));
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
