import 'package:auto_route/annotations.dart';
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
    return const BackgroundPatternBaseScreen(
        child: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            HeaderBar(),
            SizedBox(height: 12),
            OfferCard(),
          ],
        ),
      ),
    ));
  }
}
