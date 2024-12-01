import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/constants/app_colors.dart';
import '../../../../common/constants/gen/assets.gen.dart';
import '../cubits/bottom_navigation_cubit/bottom_navigation_cubit.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
      builder: (context, state) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            padding: const EdgeInsets.only(bottom: 12),
          ),
          child: NavigationBar(
            indicatorColor: Colors.transparent,
            destinations: [
              NavigationDestination(
                selectedIcon: Assets.icons.shop.svg(
                  colorFilter: const ColorFilter.mode(
                    AppColors.green,
                    BlendMode.srcIn,
                  ),
                ),
                icon: Assets.icons.shop.svg(),
                label: 'Shop',
              ),
              NavigationDestination(
                selectedIcon: Assets.icons.explore.svg(
                  colorFilter: const ColorFilter.mode(
                    AppColors.green,
                    BlendMode.srcIn,
                  ),
                ),
                icon: Assets.icons.explore.svg(),
                label: 'Explore',
              ),
              NavigationDestination(
                selectedIcon: Assets.icons.cart.svg(
                  colorFilter: const ColorFilter.mode(
                    AppColors.green,
                    BlendMode.srcIn,
                  ),
                ),
                icon: Assets.icons.cart.svg(
                  colorFilter: const ColorFilter.mode(
                    Colors.black,
                    BlendMode.srcIn,
                  ),
                ),
                label: 'Cart',
              ),
              const NavigationDestination(
                selectedIcon: Icon(
                  CupertinoIcons.heart,
                  color: AppColors.green,
                ),
                icon: Icon(CupertinoIcons.heart, color: Colors.black),
                label: 'Favourite',
              ),
              NavigationDestination(
                selectedIcon: Assets.icons.user.svg(
                  colorFilter: const ColorFilter.mode(
                    AppColors.green,
                    BlendMode.srcIn,
                  ),
                ),
                icon: Assets.icons.user.svg(
                  colorFilter: const ColorFilter.mode(
                    Colors.black,
                    BlendMode.srcIn,
                  ),
                ),
                label: 'Account',
              ),
            ],
            onDestinationSelected:
                context.read<BottomNavigationCubit>().changeTab,
            selectedIndex: state.selectedIndex,
            backgroundColor: Colors.white,
          ),
        );
      },
    );
  }
}
