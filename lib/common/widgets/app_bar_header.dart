import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'app_back_button.dart';

class AppBarHeader extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHeader({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: <Widget>[
        SizedBox(width: 4.screenWidth),
        const AppBackButton(),
        const Spacer(),
      ],
      leading: const SizedBox.shrink(),
      bottom: AppBar(
        title: Text(title),
        titleSpacing: 0,
        leading: const SizedBox.shrink(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 100);
}
