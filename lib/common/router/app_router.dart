import 'package:auto_route/auto_route.dart';

import '../../features/authentication/presentation/screens/login_screen.dart';
import '../../features/authentication/presentation/screens/register_screen.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/on_boarding/presentation/screens/on_boarding_screen.dart';
import '../../features/profile/presentation/screens/profile_success_screen.dart';
import '../../features/profile/presentation/screens/select_address_screen.dart';
import '../../features/profile/presentation/screens/update_profile_picture_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

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
        CustomRoute(
          page: UpdateProfilePictureRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          reverseDurationInMilliseconds: 150,
        ),
        CustomRoute(
          page: SelectAddressRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          reverseDurationInMilliseconds: 150,
        ),
        CustomRoute(
          page: ProfileSuccessRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          reverseDurationInMilliseconds: 150,
        ),
        CustomRoute(
          page: HomeRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          reverseDurationInMilliseconds: 150,
        ),
      ];
}
