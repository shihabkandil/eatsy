import 'package:eatsy/common/constants/gen/assets.gen.dart';
import 'package:eatsy/features/authentication/presentation/widgets/login_widgets/social_auth_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("test social auth button", () {
    testWidgets("should view button with passed params", (widgetTester) async {
      // Arrange
      const String text = 'example';

      await widgetTester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: SocialAuthButton(
            text: text,
            assetPath: Assets.icons.gallery.path,
            onPressed: () {},
            textColor: Colors.red,
            background: Colors.black,
          ),
        ),
      ));

      // Assert

      final svgPictureFinder = find.byType(SvgPicture);
      expect(svgPictureFinder, findsOneWidget);

      expect(find.text(text), findsOneWidget);

      final MaterialButton button = widgetTester.widget(find.descendant(
          of: find.byType(SocialAuthButton),
          matching: find.byType(MaterialButton)));

      expect(button.color, Colors.black);

      final buttonText = widgetTester.widget<Text>(find.descendant(
          of: find.byType(SocialAuthButton), matching: find.byType(Text)));

      expect(buttonText.style?.color, Colors.red);
    });

    testWidgets('onPressed ', (widgetTester) async {
      // Arrange
      bool isPressTriggered = false;
      const buttonText = 'example';

      await widgetTester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: SocialAuthButton(
            text: buttonText,
            assetPath: Assets.icons.gallery.path,
            onPressed: () => isPressTriggered = !isPressTriggered,
          ),
        ),
      ));

      expect(isPressTriggered, false);

      await widgetTester.tap(find.text(buttonText));
      await widgetTester.pumpAndSettle();

      expect(find.text(buttonText), findsOneWidget);
      expect(isPressTriggered, true);
    });
  });
}
