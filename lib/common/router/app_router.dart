import 'package:auto_route/auto_route.dart';

import '../../features/authentication/presentation/screens/login_screen.dart';
import '../../features/authentication/presentation/screens/register_screen.dart';
import '../../features/on_boarding/presentation/screens/on_boarding_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: OnBoardingRoute.page,
          initial: true,
        ),
        CustomRoute(
          page: LoginRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          reverseDurationInMilliseconds: 150,
        ),
        CustomRoute(
          page: RegisterRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          reverseDurationInMilliseconds: 150,
        ),
      ];
}
