import 'package:flutter/material.dart';
import 'package:food_ninja/utils/app_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.appRouter}) : super(key: key);
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      builder: (context) => MaterialApp.router(
        debugShowCheckedModeBanner: true,
        routerConfig: appRouter.config(),
      ),
    );
  }
}
