import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../home/presentation/screens/home_screen.dart';
import '../cubits/bottom_navigation_cubit/bottom_navigation_cubit.dart';
import '../widgets/app_bottom_navigation_bar.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final List<Widget> _screens = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavigationCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
              builder: (context, state) => _screens[state.selectedIndex],
            ),
            bottomNavigationBar: const AppBottomNavigationBar(),
          );
        },
      ),
    );
  }
}
