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
import '../data.dart';
import '../strings.dart';

class TlgPageHome extends StatefulWidget {
  const TlgPageHome({this.data, this.configuration, this.configurationUpdate});

  final TlgData data;
  final TlgConfiguration configuration;
  final ValueChanged<TlgConfiguration> configurationUpdate;

  @override
  _State createState() => new _State();
}

class _State extends State<TlgPageHome> {
  int _debug = 0;

  void updateConfiguration(TlgConfiguration value) {
    if (widget.configurationUpdate != null) widget.configurationUpdate(value);
  }

  void _handleShowSettings() {
    Navigator.popAndPushNamed(context, '/settings');
  }

  void _handleDebug() {
    if (++_debug > 5) {
      updateConfiguration(widget.configuration.copyWith(debug: true));
      _debug = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('The Lab Geek'),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new DrawerHeader(
              child: const Center(child: const Text('TODO: Header')),
            ),
            new ListTile(
              leading: const Icon(Icons.archive),
              title: new Text(TlgStrings.of(context).archived()),
            ),
            const Divider(),
            new ListTile(
              leading: const Icon(Icons.settings),
              title: new Text(TlgStrings.of(context).settings()),
              onTap: _handleShowSettings,
            ),
            new AboutListTile(
              icon: const Icon(Icons.help),
              applicationName: 'The Lab Geek',
              applicationVersion: 'TODO: 0.0.0',
              applicationIcon: new IconButton(
                icon: const Icon(Icons.whatshot),
                onPressed: _handleDebug,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
