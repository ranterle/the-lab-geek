/*
 * The Lab Geek
 * Copyright © 2018 Tub Technology
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that looks up messages for specific locales by
// delegating to the appropriate library.

import 'dart:async';

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

// ignore: implementation_imports
import 'package:intl/src/intl_helpers.dart';

import 'messages_en_GB.dart' as messages_en_GB;
import 'messages_en_US.dart' as messages_en_US;

typedef Future<dynamic> LibraryLoader();
Map<String, LibraryLoader> _deferredLibraries = {
  'en_GB': () => new Future.value(null),
  'en_US': () => new Future.value(null),
};

MessageLookupByLibrary _findExact(localeName) {
  switch (localeName) {
    case 'en_GB':
      return messages_en_GB.messages;
    case 'en_US':
      return messages_en_US.messages;
    default:
      return null;
  }
}

/// User programs should call this before using [localeName] for messages.
Future initializeMessages(String localeName) async {
  var lib = _deferredLibraries[Intl.canonicalizedLocale(localeName)];
  await (lib == null ? new Future.value(false) : lib());
  initializeInternalMessageLookup(() => new CompositeMessageLookup());
  messageLookup.addLocale(localeName, _findGeneratedMessagesFor);
}

bool _messagesExistFor(String locale) {
  try {
    return _findExact(locale) != null;
  } catch (e) {
    return false;
  }
}

MessageLookupByLibrary _findGeneratedMessagesFor(locale) {
  var actualLocale = Intl.verifiedLocale(locale, _messagesExistFor,
      onFailure: (_) => null);
  if (actualLocale == null) return null;
  return _findExact(actualLocale);
}
