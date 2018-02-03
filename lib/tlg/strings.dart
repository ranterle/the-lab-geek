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

  String archived() =>
      Intl.message(
        'Archived',
        name: 'archived',
        desc: 'Label for the Archived page',
        locale: _localeName,
      );

  String debug() =>
      Intl.message(
        'Debug',
        name: 'debug',
        desc: 'Label for the Debug page',
        locale: _localeName,
      );

  String debugEnabled() =>
      Intl.message(
        'Debug enabled',
        name: 'debugEnabled',
        desc: 'A toast that notifies the user that debug mode has been enabled',
        locale: _localeName,
      );

  String debugToggleMode() =>
      Intl.message(
        'Debug mode',
        name: 'debugToggleMode',
        desc: 'Label for the debugging toggle that enables/disables debug mode',
        locale: _localeName,
      );

  String debugToggleMaterialGrid() =>
      Intl.message(
        'Show material grid',
        name: 'debugToggleMaterialGrid',
        desc: 'Label for the debugging toggle that shows the material grid',
        locale: _localeName,
      );

  String debugToggleConstructionLines() =>
      Intl.message(
        'Show construction lines',
        name: 'debugToggleConstructionLines',
        desc: 'Label for the debugging toggle that shows the construction lines',
        locale: _localeName,
      );

  String debugToggleBaselines() =>
      Intl.message(
        'Show baselines',
        name: 'debugToggleBaselines',
        desc: 'Label for the debugging toggle that shows the baselines',
        locale: _localeName,
      );

  String debugToggleLayerBoundaries() =>
      Intl.message(
        'Show layer boundaries',
        name: 'debugToggleLayerBoundaries',
        desc: 'Label for the debugging toggle that shows the layer boundaries',
        locale: _localeName,
      );

  String debugTogglePointerHitTesting() =>
      Intl.message(
        'Show pointer hit-testing',
        name: 'debugTogglePointerHitTesting',
        desc: 'Label for the debugging toggle that shows the pointer hit-testing outlines',
        locale: _localeName,
      );

  String debugToggleRepaintRainbow() =>
      Intl.message(
        'Show repaint rainbow',
        name: 'debugToggleRepaintRainbow',
        desc: 'Label for the debugging toggle that shows the repaint rainbow',
        locale: _localeName,
      );

  String debugToggleRenderingPerformanceOverlay() =>
      Intl.message(
        'Show rendering performance overlay',
        name: 'debugToggleRenderingPerformanceOverlay',
        desc: 'Label for the debugging toggle that shows the rendering performance overlay',
        locale: _localeName,
      );

  String debugToggleSemanticsOverlay() =>
      Intl.message(
        'Show semantics overlay',
        name: 'debugToggleSemanticsOverlay',
        desc: 'Label for the debugging toggle that shows the semantics overlay',
        locale: _localeName,
      );
}
