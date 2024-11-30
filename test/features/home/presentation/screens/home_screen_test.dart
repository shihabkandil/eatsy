import 'package:eatsy/common/widgets/background_pattern_base_screen.dart';
import 'package:eatsy/features/home/presentation/screens/home_screen.dart';
import 'package:eatsy/features/home/presentation/widgets/header_bar.dart';
import 'package:eatsy/features/home/presentation/widgets/offer_card.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../app_pumper.dart';

void main() {
  testWidgets(
    'HomeScreen displays main sections correctly',
    (widgetTester) async {
      await widgetTester.pumpWidget(const AppPumper(
        child: HomeScreen(),
      ),);

      expect(find.byType(BackgroundPatternBaseScreen), findsOneWidget);

      expect(find.byType(OfferCard), findsOneWidget);

      expect(find.byType(HeaderBar), findsOneWidget);
    },
  );
}
