import 'package:flutter/material.dart';

import '../configuration.dart';
import '../data.dart';

class TlgPageHome extends StatelessWidget {
  const TlgPageHome({this.data, this.configuration});

  final TlgData data;
  final TlgConfiguration configuration;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
      title: new Text('The Lab Geek'),
    ));
  }
}
