import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'common/router/app_router.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.appRouter}) : super(key: key);
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      builder: (context) => MaterialApp.router(
        debugShowCheckedModeBanner: true,
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
        theme: ThemeData(fontFamily: 'Poppins'),
      ),
    );
  }
}
