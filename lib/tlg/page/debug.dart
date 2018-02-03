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

import 'package:flutter/material.dart';

import '../configuration.dart';
import '../strings.dart';

class TlgPageDebug extends StatefulWidget {
  const TlgPageDebug({this.configuration, this.configurationUpdate});

  final TlgConfiguration configuration;
  final ValueChanged<TlgConfiguration> configurationUpdate;

  @override
  _State createState() => new _State();
}

class _State extends State<TlgPageDebug> {
  void updateConfiguration(TlgConfiguration value) {
    if (widget.configurationUpdate != null) widget.configurationUpdate(value);
  }

  void _handleDebugChanged(bool value) {
    updateConfiguration(widget.configuration.copyWith(debug: value));
  }

  void _handleShowGridChanged(bool value) {
    updateConfiguration(widget.configuration.copyWith(debugShowGrid: value));
  }

  void _handleShowSizesChanged(bool value) {
    updateConfiguration(widget.configuration.copyWith(debugShowSizes: value));
  }

  void _handleShowBaselinesChanged(bool value) {
    updateConfiguration(widget.configuration.copyWith(debugShowBaselines: value));
  }

  void _handleShowLayersChanged(bool value) {
    updateConfiguration(widget.configuration.copyWith(debugShowLayers: value));
  }

  void _handleShowPointersChanged(bool value) {
    updateConfiguration(widget.configuration.copyWith(debugShowPointers: value));
  }

  void _handleShowRainbowChanged(bool value) {
    updateConfiguration(widget.configuration.copyWith(debugShowRainbow: value));
  }

  void _handleShowPerformanceOverlayChanged(bool value) {
    updateConfiguration(widget.configuration.copyWith(debugShowPerformanceOverlay: value));
  }

  void _handleShowSemanticsDebuggerChanged(bool value) {
    updateConfiguration(widget.configuration.copyWith(debugShowSemanticsDebugger: value));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(TlgStrings.of(context).debug()),
        ),
        body: new ListView(
          children: <Widget>[
            new SwitchListTile(
              title: new Text(TlgStrings.of(context).debugToggleMode()),
              value: widget.configuration.debug,
              onChanged: _handleDebugChanged,
              secondary: const Icon(Icons.whatshot),
            ),
            new SwitchListTile(
              title: new Text(TlgStrings.of(context).debugToggleMaterialGrid()),
              value: widget.configuration.debugShowGrid,
              onChanged: widget.configuration.debug ? _handleShowGridChanged : null,
              secondary: const Icon(Icons.border_clear),
            ),
            new SwitchListTile(
              title: new Text(TlgStrings.of(context).debugToggleConstructionLines()),
              value: widget.configuration.debugShowSizes,
              onChanged: widget.configuration.debug ? _handleShowSizesChanged : null,
              secondary: const Icon(Icons.border_all),
            ),
            new SwitchListTile(
              title: new Text(TlgStrings.of(context).debugToggleBaselines()),
              value: widget.configuration.debugShowBaselines,
              onChanged: widget.configuration.debug ? _handleShowBaselinesChanged : null,
              secondary: const Icon(Icons.format_color_text),
            ),
            new SwitchListTile(
              title: new Text(TlgStrings.of(context).debugToggleLayerBoundaries()),
              value: widget.configuration.debugShowLayers,
              onChanged: widget.configuration.debug ? _handleShowLayersChanged : null,
              secondary: const Icon(Icons.filter_none),
            ),
            new SwitchListTile(
              title: new Text(TlgStrings.of(context).debugTogglePointerHitTesting()),
              value: widget.configuration.debugShowPointers,
              onChanged: widget.configuration.debug ? _handleShowPointersChanged : null,
              secondary: const Icon(Icons.mouse),
            ),
            new SwitchListTile(
              title: new Text(TlgStrings.of(context).debugToggleRepaintRainbow()),
              value: widget.configuration.debugShowRainbow,
              onChanged: widget.configuration.debug ? _handleShowRainbowChanged : null,
              secondary: const Icon(Icons.gradient),
            ),
            new SwitchListTile(
              title: new Text(TlgStrings.of(context).debugToggleRenderingPerformanceOverlay()),
              value: widget.configuration.debugShowPerformanceOverlay,
              onChanged: widget.configuration.debug ? _handleShowPerformanceOverlayChanged : null,
              secondary: const Icon(Icons.picture_in_picture),
            ),
            new SwitchListTile(
              title: new Text(TlgStrings.of(context).debugToggleSemanticsOverlay()),
              value: widget.configuration.debugShowSemanticsDebugger,
              onChanged: widget.configuration.debug ? _handleShowSemanticsDebuggerChanged : null,
              secondary: const Icon(Icons.accessibility),
            ),
          ],
        ));
  }
}
