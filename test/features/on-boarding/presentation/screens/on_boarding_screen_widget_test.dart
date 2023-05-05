import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_ninja/common/constants/app_colors.dart';
import 'package:food_ninja/common/constants/image_path.dart';
import 'package:food_ninja/features/on-boarding/presentation/screens/on_boarding_screen.dart';
import 'package:food_ninja/features/on-boarding/presentation/widgets/on_boarding_body.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  group('OnBoarding Screen', () {
    Widget onBoardingScreenWidget() {
      return ResponsiveApp(
        builder: (_) => const MaterialApp(
          home: OnBoardingScreen(),
        ),
      );
    }

    testWidgets('displays onBoarding Slider', (widgetTester) async {
      await widgetTester.pumpWidget(
        onBoardingScreenWidget(),
      );

      final onBoardingSliderFinder = find.byType(OnBoardingSlider);
      expect(onBoardingSliderFinder, findsOneWidget);

      final onBoardingSliderWidget =
          widgetTester.widget<OnBoardingSlider>(onBoardingSliderFinder);
      expect(
        onBoardingSliderWidget.background,
        everyElement(
          isA<SizedBox>(),
        ),
      );
      expect(
        onBoardingSliderWidget.background.length,
        equals(2),
      );

      expect(
        onBoardingSliderWidget.finishButtonStyle?.backgroundColor,
        equals(
          AppColors.lightGreen,
        ),
      );
      expect(
        onBoardingSliderWidget.background.length,
        equals(2),
      );
      expect(
        onBoardingSliderWidget.finishButtonStyle?.shape,
        isA<RoundedRectangleBorder>(),
      );
      final shape = onBoardingSliderWidget.finishButtonStyle?.shape
          as RoundedRectangleBorder;
      expect(
        shape.borderRadius,
        equals(
          BorderRadius.circular(1.sh),
        ),
      );
      expect(onBoardingSliderWidget.totalPage, equals(2));
      expect(
        onBoardingSliderWidget.finishButtonText,
        equals('Next'),
      );
      expect(
        onBoardingSliderWidget.controllerColor,
        equals(AppColors.lightGreen),
      );
      expect(
        onBoardingSliderWidget.headerBackgroundColor,
        equals(Colors.white),
      );
      expect(
        onBoardingSliderWidget.pageBackgroundColor,
        equals(Colors.white),
      );
    });

    testWidgets('displays onBoardingBody widgets ', (widgetTester) async {
      await widgetTester.pumpWidget(
        onBoardingScreenWidget(),
      );
      final onBoardingSliderWidget = widgetTester.widget<OnBoardingSlider>(
        find.byType(OnBoardingSlider),
      );
      final pageBodiesListWidget = onBoardingSliderWidget.pageBodies;

      expect(pageBodiesListWidget.length, equals(2));
      expect(
        pageBodiesListWidget,
        everyElement(
          isA<OnBoardingBody>(),
        ),
      );
    });

    testWidgets('displays onBoardingBody widgets content',
        (widgetTester) async {
      await widgetTester.pumpWidget(
        onBoardingScreenWidget(),
      );
      final onBoardingSliderWidget = widgetTester.widget<OnBoardingSlider>(
        find.byType(OnBoardingSlider),
      );
      final pageBodiesListWidget = onBoardingSliderWidget.pageBodies;

      final firstPageBodyWidget = pageBodiesListWidget[0] as OnBoardingBody;
      expect(
        firstPageBodyWidget.title,
        equals('Find your Comfort Food here'),
      );
      expect(
        firstPageBodyWidget.subTitle,
        equals(
            'Here You Can find a chef or dish for every taste and color. Enjoy!'),
      );
      expect(
        firstPageBodyWidget.imagePath,
        equals(ImagePath.firstOnBoarding),
      );

      final secondPageBodyWidget = pageBodiesListWidget[1] as OnBoardingBody;
      expect(
        secondPageBodyWidget.title,
        equals('Food Ninja is Where Your Comfort Food Lives'),
      );
      expect(
        secondPageBodyWidget.subTitle,
        equals('Enjoy a fast and smooth food delivery at your doorstep'),
      );
      expect(
        secondPageBodyWidget.imagePath,
        equals(ImagePath.secondOnBoarding),
      );
    });
  });
}
