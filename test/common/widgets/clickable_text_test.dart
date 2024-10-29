import 'package:eatsy/common/widgets/clickable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const String sampleText = 'SampleText';
  bool tapTriggered = false;

  late Widget foodTestApp;

  setUp(() {
    foodTestApp = MaterialApp(
        home: Scaffold(
          body: ClickableText(
            text: sampleText,
            onTap: () => tapTriggered = true,
            alignment: Alignment.centerRight,
            textStyle: const TextStyle(fontSize: 20),
          ),
        ),
    );
  });

  group('ClickableText', () {
    testWidgets('Renders text ', (widgetTester) async {
      await widgetTester.pumpWidget(foodTestApp);
      expect(find.text(sampleText), findsOneWidget);
    });

    testWidgets('on Text tap ', (widgetTester) async {
      await widgetTester.pumpWidget(foodTestApp);

      expect(tapTriggered, false);

      await widgetTester.tap(find.text(sampleText));
      await widgetTester.pump();

      expect(tapTriggered, true);
    });

    testWidgets('Renders with properties', (widgetTester) async {
      await widgetTester.pumpWidget(foodTestApp);
      final alignFinder = find.byType(Align);
      final alignWidget = widgetTester.widget<Align>(alignFinder);
      expect(alignWidget.alignment, Alignment.centerRight);

      final textFinder = find.text(sampleText);
      final textWidget = widgetTester.widget<Text>(textFinder);
      expect(textWidget.style, const TextStyle(fontSize: 20));
    });
  });
}
