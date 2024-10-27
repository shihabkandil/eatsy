import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../common/constants/app_colors.dart';
import '../../../../common/constants/gen/assets.gen.dart';
import '../../../../common/constants/ui_constants.dart';
import '../../../../common/widgets/app_bar_header.dart';
import '../widgets/set_location_card.dart';

@RoutePage()
class SelectAddressScreen extends StatelessWidget {
  const SelectAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackground,
      appBar: const AppBarHeader(
        title: 'Upload your photo profile',
      ),
      body: Padding(
        padding: const EdgeInsets.all(14) +
            const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const Text(
                "This data will be used when delivering food to your doorstep."),
            const SizedBox(height: 16),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [UiConstants.cardBoxShadow.scale(0.8)],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Assets.icons.location.svg(),
                        const SizedBox(width: 12),
                        const Text('Your Location')
                      ],
                    ),
                    const SizedBox(height: 6),
                    const SetLocationCard()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
