import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
        padding: EdgeInsets.all(4.screenWidth) +
            EdgeInsets.symmetric(horizontal: 2.screenWidth),
        child: Column(
          children: [
            const Text(
                "This data will be used when delivering food to your doorstep."),
            SizedBox(
              height: 5.sh,
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [UiConstants.cardBoxShadow.scale(0.8)],
                borderRadius: BorderRadius.circular(
                  2.screenHeight,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(3.screenWidth),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Assets.icons.location.svg(),
                        SizedBox(
                          width: 2.screenWidth,
                        ),
                        const Text('Your Location')
                      ],
                    ),
                    SizedBox(height: 1.screenHeight),
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
