import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/constants/app_colors.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          child: Text(
            'Find Your\nFavourite Food',
            style: TextStyle(fontSize: 32),
          ),
        ),
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(12),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Badge(
              label: Text('2'),
              padding: EdgeInsets.zero,
              backgroundColor: Colors.red,
              isLabelVisible: true,
              child: Icon(
                CupertinoIcons.bell,
                color: AppColors.green,
                size: 26,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
