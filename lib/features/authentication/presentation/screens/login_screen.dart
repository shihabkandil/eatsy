import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/background_pattern_base_screen.dart';
import '../widgets/login_widgets/login_body.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BackgroundPatternBaseScreen(
      child: LoginBody(),
    );
  }
}
