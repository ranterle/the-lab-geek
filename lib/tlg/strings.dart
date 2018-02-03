import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

import 'i18n/messages_all.dart';

class TlgStrings {
  TlgStrings(Locale locale) : _localeName = locale.toString();

  final String _localeName;

  static Future<TlgStrings> load(Locale locale) {
    return initializeMessages(locale.toString()).then((Object _) {
      return new TlgStrings(locale);
    });
  }

  static TlgStrings of(BuildContext context) {
    return Localizations.of<TlgStrings>(context, TlgStrings);
  }

  String experiments() => Intl.message(
        'Experiments',
        name: 'experiments',
        desc: 'Label for the Experiments page',
        locale: _localeName,
      );

  String settings() => Intl.message(
        'Settings',
        name: 'settings',
        desc: 'Label for the Settings page',
        locale: _localeName,
      );
}
