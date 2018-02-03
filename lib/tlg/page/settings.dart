import 'package:flutter/material.dart';

import '../configuration.dart';

class TlgPageSettings extends StatelessWidget {
  const TlgPageSettings({this.configuration, this.configurationUpdate});

  final TlgConfiguration configuration;
  final ValueChanged<TlgConfiguration> configurationUpdate;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
      title: new Text('Settings'),
    ));
  }
}
