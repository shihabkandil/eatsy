import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/auth_screen_base.dart';
import '../widgets/register_widgets/register_body.dart';

@RoutePage()
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AuthScreenBase(
      child: RegisterBody(),
    );
  }
}
