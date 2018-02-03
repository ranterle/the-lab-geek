enum TlgTheme { light, dark }

class TlgConfiguration {
  TlgConfiguration({
    this.theme = TlgTheme.light,
    this.showGrid = false,
    this.showPerformanceOverlay = false,
    this.showSemanticsDebugger = false,
  });

  final TlgTheme theme;
  final bool showGrid;
  final bool showPerformanceOverlay;
  final bool showSemanticsDebugger;

  TlgConfiguration copyWith({
    TlgTheme theme,
    bool debugShowGrid,
    bool debugShowSizes,
    bool debugShowBaselines,
    bool debugShowLayers,
    bool debugShowPointers,
    bool debugShowRainbow,
    bool showPerformanceOverlay,
    bool showSemanticsDebugger,
  }) {
    return new TlgConfiguration(
        theme: theme ?? this.theme,
        showGrid: debugShowGrid ?? this.showGrid,
        showPerformanceOverlay: showPerformanceOverlay ?? this.showPerformanceOverlay,
        showSemanticsDebugger: showSemanticsDebugger ?? this.showSemanticsDebugger);
  }
}
