import 'package:flutter/cupertino.dart';

import '../../l10n/generated/app_localizations.dart';

extension Localizer on BuildContext {
  AppLocalizations get localizer => AppLocalizations.of(this);
}
