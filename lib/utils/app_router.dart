import 'package:auto_route/auto_route.dart';

import '../features/on-boarding/presentation/screens/on_boarding_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OnBoardingRoute.page, initial: true),
        //AutoRoute(page: OnBoardingRoute.page),
      ];
}
