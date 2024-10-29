import 'package:eatsy/l10n/generated/app_localizations.dart';
import 'package:flutter/cupertino.dart';

extension Localizer on BuildContext {
  AppLocalizations get localizer => AppLocalizations.of(this);
}
