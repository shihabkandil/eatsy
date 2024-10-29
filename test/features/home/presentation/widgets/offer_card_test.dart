import 'package:eatsy/common/constants/app_colors.dart';
import 'package:eatsy/features/home/presentation/widgets/offer_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_test/flutter_svg_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  testWidgets('OfferCard displays correctly', (WidgetTester tester) async {
    // Build the OfferCard widget
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: OfferCard(),
        ),
      ),
    );

    final DecoratedBox decoratedBox = tester.widget<DecoratedBox>(
      find.byType(DecoratedBox),
    );
    final BoxDecoration decoration = decoratedBox.decoration as BoxDecoration;
    expect(decoration.borderRadius, BorderRadius.circular(14));
    expect(decoration.gradient, AppColors.greenGradient);

    expect(find.byType(SvgPicture), findsOneWidget);
    expect(
      find.svgAssetWithPath('assets/icons/card_mask.svg'),
      findsOneWidget,
    );

    expect(find.byType(Image), findsOneWidget);
    expect(
      find.image(const AssetImage('assets/images/ice_cream_offer.png')),
      findsOneWidget,
    );

    expect(find.text("Special Deal For \nOctober"), findsOneWidget);
    final Text textWidget =
        tester.widget<Text>(find.text("Special Deal For \nOctober"));
    expect(textWidget.style?.fontSize, 20);
    expect(textWidget.style?.color, Colors.white);
    expect(textWidget.style?.fontWeight, FontWeight.w500);

    final MaterialButton button = tester.widget<MaterialButton>(
      find.byType(MaterialButton),
    );
    expect(button.color, Colors.white);
    expect(
      button.shape,
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    );

    expect(find.text("Buy Now"), findsOneWidget);
    final Text buttonText = tester.widget<Text>(find.text("Buy Now"));
    expect(buttonText.style?.color, AppColors.green);
  });
}
