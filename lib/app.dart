import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'features/on-boarding/presentation/screens/on_boarding_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: true,
        builder: (context, child) => const OnBoardingScreen(),
      ),
    );
  }
}
