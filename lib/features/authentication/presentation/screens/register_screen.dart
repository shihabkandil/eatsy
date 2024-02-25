import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/background_pattern_base_screen.dart';
import '../widgets/register_widgets/register_body.dart';

@RoutePage()
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BackgroundPatternBaseScreen(
      child: RegisterBody(),
    );
  }
}
