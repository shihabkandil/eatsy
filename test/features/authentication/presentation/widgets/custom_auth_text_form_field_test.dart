import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_ninja/features/authentication/presentation/widgets/custom_auth_text_form_field.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  group('Test CustomAuthTextFormField', () {
    testWidgets('Renders with HintText', (widgetTester) async {
      String hintText = 'Hint Sample Text';
      await widgetTester.pumpWidget(ResponsiveApp(builder: (context) {
        return const MaterialApp(
          home: Scaffold(
            body: CustomAuthTextFormField(
              hintText: 'Hint Sample Text',
            ),
          ),
        );
      }));
      expect(find.text(hintText), findsOneWidget);
    });

    testWidgets('OnChangedCallback', (widgetTester) async {
      String changedText = '';

      await widgetTester.pumpWidget(ResponsiveApp(builder: (context) {
        return MaterialApp(
          home: Scaffold(
            body: CustomAuthTextFormField(
              onChanged: (value) => changedText = value,
            ),
          ),
        );
      }));

      await widgetTester.enterText(find.byType(TextFormField), 'Hello World');

      expect(changedText, equals('Hello World'));
    });

    testWidgets('OnSubmittedCallback', (widgetTester) async {
      String submittedText = '';

      await widgetTester.pumpWidget(ResponsiveApp(builder: (context) {
        return MaterialApp(
          home: Scaffold(
            body: CustomAuthTextFormField(
              onSubmitted: (value) => submittedText = value,
            ),
          ),
        );
      }));
      await widgetTester.enterText(
          find.byType(TextFormField), 'Submitted Text Sample');
      await widgetTester.testTextInput.receiveAction(TextInputAction.done);

      expect(submittedText, equals('Submitted Text Sample'));
    });
  });
}
