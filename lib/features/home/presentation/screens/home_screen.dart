import 'package:auto_route/annotations.dart';
import 'package:eatsy/common/widgets/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/background_pattern_base_screen.dart';
import '../widgets/header_bar.dart';
import '../widgets/offer_card.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPatternBaseScreen(
        child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const HeaderBar(),
            const SizedBox(height: 16),
            const OfferCard(),
            const SizedBox(height: 16),
            SizedBox(
              height: 260,
              child: ListView(
                padding: const EdgeInsets.all(4),
                scrollDirection: Axis.horizontal,
                children: const [
                  ProductCard(),
                  SizedBox(width: 12),
                  ProductCard(),
                  SizedBox(width: 12),
                  ProductCard(),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
