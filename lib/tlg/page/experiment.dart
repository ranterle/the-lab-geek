import 'package:flutter/material.dart';

import '../data.dart';
import '../strings.dart';

class TlgPageExperiment extends StatelessWidget {
  const TlgPageExperiment({this.data, this.id});

  final TlgData data;
  final String id;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(TlgStrings.of(context).experiments()),
    ));
  }
}
