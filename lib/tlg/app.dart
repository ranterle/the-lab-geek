import 'package:flutter/material.dart';

import 'configuration.dart';
import 'data.dart';
import 'page/experiment.dart';
import 'page/home.dart';
import 'page/settings.dart';

class TlgApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<TlgApp> {
  TlgData data;

  TlgConfiguration _configuration = new TlgConfiguration();

  @override
  void initState() {
    super.initState();
    data = new TlgData();
  }

  void configurationUpdate(TlgConfiguration value) {
    setState(() {
      _configuration:
      value;
    });
  }

  ThemeData get theme {
    switch (_configuration.theme) {
      case TlgTheme.light:
        return new ThemeData(primarySwatch: Colors.blue);
      case TlgTheme.dark:
        return new ThemeData(primarySwatch: Colors.red);
    }
    assert(_configuration.theme != null);
    return null;
  }

  Route<Null> _getRoute(RouteSettings settings) {
    final List<String> path = settings.name.split('/');

    if (path[0] != '') return null;

    if (path[1].startsWith('experiment:')) {
      if (path.length != 2) return null;

      final String id = path[1].split(':')[1];

      return new MaterialPageRoute<Null>(
        settings: settings,
        builder: (BuildContext context) => new TlgPageExperiment(id: id, data: data),
      );
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'The Lab Geek',
      theme: theme,
      debugShowMaterialGrid: _configuration.showGrid,
      showPerformanceOverlay: _configuration.showPerformanceOverlay,
      showSemanticsDebugger: _configuration.showSemanticsDebugger,
      routes: <String, WidgetBuilder>{
        '/': (BuildContext _) => new TlgPageHome(
              data: data,
              configuration: _configuration,
            ),
        '/settings': (BuildContext _) => new TlgPageSettings(
              configuration: _configuration,
              configurationUpdate: configurationUpdate,
            ),
      },
      onGenerateRoute: _getRoute,
    );
  }
}
