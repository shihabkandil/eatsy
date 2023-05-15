import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../widgets/auth_screen_base.dart';
import '../widgets/login_widgets/login_body.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AuthScreenBase(
      child: LoginBody(),
    );
  }
}
