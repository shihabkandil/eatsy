import 'package:eatsy/common/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  const String sampleText = 'SampleText';
  bool pressTriggered = false;

  late Widget foodTestApp;

  setUp(() {
    foodTestApp = ResponsiveApp(
      builder: (_) => MaterialApp(
        home: Scaffold(
            body: CustomButton(
          onPressed: () {
            pressTriggered = true;
          },
          text: sampleText,
        )),
      ),
    );
  });

  group('Custom Button', () {
    testWidgets('Renders button text ', (widgetTester) async {
      await widgetTester.pumpWidget(foodTestApp);
      expect(find.text(sampleText), findsOneWidget);
    });

    testWidgets('button onPressed ', (widgetTester) async {
      await widgetTester.pumpWidget(foodTestApp);

      expect(pressTriggered, false);

      await widgetTester.tap(find.text(sampleText));
      await widgetTester.pump();

      expect(pressTriggered, true);
    });
  });
}
