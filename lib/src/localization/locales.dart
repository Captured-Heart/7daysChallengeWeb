import 'package:flutter/material.dart';

import 'en_locale.dart';
import 'locale_interface.dart';

class GlobalLocalization {
  static Map<String, LocaleInterface> get values => {
        'en': ENLocale(),
      };
}

class AppLocales {
  static LocaleInterface of(BuildContext context) {
    return GlobalLocalization
        .values[Localizations.localeOf(context).languageCode]!;
  }
}
