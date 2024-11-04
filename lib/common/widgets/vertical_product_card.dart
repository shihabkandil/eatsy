import 'package:cached_network_image/cached_network_image.dart';
import 'package:eatsy/common/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class VerticalProductCard extends StatelessWidget {
  const VerticalProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(22),
      onTap: () {},
      child: Container(
        color: Colors.white,
        child: Ink(
          color: Colors.green,
          child: SizedBox(
            width: 190,
            height: 190,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.25),
                      spreadRadius: 1,
                      blurRadius: 5,
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: CachedNetworkImage(
                        imageUrl: Constants.dummyProductImageLink,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      "Mixed Salad",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          "\$6.00",
                          style: TextStyle(
                            fontSize: 21,
                            fontFamily: Constants.geliatFontFamily,
                            fontWeight: FontWeight.w700,
                            color: AppColors.green,
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            CupertinoIcons.suit_heart,
                            color: Colors.red,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
