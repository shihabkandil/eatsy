import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../common/constants/app_colors.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 166,
      width: double.maxFinite,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          gradient: AppColors.greenGradient,
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            SvgPicture.asset('assets/icons/card_mask.svg'),
            Row(
              children: [
                Expanded(
                  flex: 10,
                  child: Image.asset(
                    'assets/images/ice_cream_offer.png',
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Expanded(
                  flex: 12,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Special Deal For \nOctober",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        MaterialButton(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Buy Now",
                            style: TextStyle(color: AppColors.green),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
