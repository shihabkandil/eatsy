import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../common/constants/app_colors.dart';
import '../../../../common/constants/gen/assets.gen.dart';
import '../../../../common/router/app_router.dart';
import '../../../../common/widgets/app_bar_header.dart';
import '../widgets/vertical_svg_icon_card.dart';

@RoutePage()
class UpdateProfilePictureScreen extends StatelessWidget {
  const UpdateProfilePictureScreen({super.key});

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
        child: Column(children: [
          const Text(
              "This data will be displayed in your account profile for security."),
          SizedBox(
            height: 10.sh,
          ),
          VerticalSvgIconCard(
            width: double.maxFinite,
            svgPath: Assets.icons.gallery.path,
            text: "From Gallery",
            onPressed: () {
              context.pushRoute(const SelectAddressRoute());
            },
          ),
          SizedBox(
            height: 4.sh,
          ),
          VerticalSvgIconCard(
            width: double.maxFinite,
            svgPath: Assets.icons.camera.path,
            text: "Take Photo",
            onPressed: () {},
          ),
        ]),
      ),
    );
  }
}


