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

class TlgPageSettings extends StatefulWidget {
  const TlgPageSettings({this.configuration, this.configurationUpdate});

  final TlgConfiguration configuration;
  final ValueChanged<TlgConfiguration> configurationUpdate;

  @override
  _State createState() => new _State();
}

class _State extends State<TlgPageSettings> {
  void updateConfiguration(TlgConfiguration value) {
    if (widget.configurationUpdate != null) widget.configurationUpdate(value);
  }

  void _handleShowDebug() {
    Navigator.pushNamed(context, '/debug');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(TlgStrings.of(context).settings()),
        actions: (widget.configuration.debug) ? <Widget>[
          new IconButton(
              icon: const Icon(Icons.whatshot),
              onPressed: _handleShowDebug
          )
        ] : <Widget>[],
      ),
    );
  }
}
