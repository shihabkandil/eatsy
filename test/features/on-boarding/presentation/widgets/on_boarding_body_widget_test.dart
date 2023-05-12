import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_ninja/common/constants/app_colors.dart';
import 'package:food_ninja/common/constants/image_paths.dart';
import 'package:food_ninja/features/on_boarding/presentation/widgets/on_boarding_body.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  testWidgets('OnBoardingBody Widget', (widgetTester) async {
    const String title = 'Title Text';
    const String subTitle = 'subTitle Text';
    const String imagePath = ImagePaths.firstOnBoarding;

    await widgetTester.pumpWidget(ResponsiveApp(
      builder: (_) => const MaterialApp(
        home: OnBoardingBody(
          title: title,
          imagePath: imagePath,
          subTitle: subTitle,
        ),
      ),
    ));

    final imageFinder = find.byType(Image);
    final titleFinder = find.text(title);
    final subTitleFinder = find.text(subTitle);

    expect(imageFinder, findsOneWidget);
    expect(subTitleFinder, findsOneWidget);
    expect(titleFinder, findsOneWidget);

    final imageWidget = widgetTester.widget<Image>(imageFinder);
    expect(
      imageWidget.image,
      const AssetImage(imagePath),
    );

    final titleWidget = widgetTester.widget<Text>(titleFinder);
    expect(titleWidget.style?.fontSize, 3.sh);
    expect(titleWidget.style?.color, AppColors.lightGreen);

    final subTitleWidget = widgetTester.widget<Text>(subTitleFinder);
    expect(subTitleWidget.style?.fontSize, 2.5.sh);
    expect(subTitleWidget.style?.color, Colors.black38);
  });
}
