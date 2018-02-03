enum TlgTheme { light, dark }

class TlgConfiguration {
  TlgConfiguration({
    this.theme = TlgTheme.light,
    this.debugShowGrid = false,
    this.debugShowSizes = false,
    this.debugShowBaselines = false,
    this.debugShowLayers = false,
    this.debugShowPointers = false,
    this.debugShowRainbow = false,
    this.debugShowPerformanceOverlay = false,
    this.debugShowSemanticsDebugger = false,
  });

  final TlgTheme theme;
  final bool debugShowGrid;
  final bool debugShowSizes;
  final bool debugShowBaselines;
  final bool debugShowLayers;
  final bool debugShowPointers;
  final bool debugShowRainbow;
  final bool debugShowPerformanceOverlay;
  final bool debugShowSemanticsDebugger;

  TlgConfiguration copyWith({
    TlgTheme theme,
  }) {
    return new TlgConfiguration(
        theme: theme ?? this.theme,
        debugShowGrid: debugShowGrid ?? this.debugShowGrid,
        debugShowSizes: debugShowSizes ?? this.debugShowSizes,
        debugShowBaselines: debugShowBaselines ?? this.debugShowBaselines,
        debugShowLayers: debugShowLayers ?? this.debugShowLayers,
        debugShowPointers: debugShowPointers ?? this.debugShowPointers,
        debugShowRainbow: debugShowRainbow ?? this.debugShowRainbow,
        debugShowPerformanceOverlay: debugShowPerformanceOverlay ?? this.debugShowPerformanceOverlay,
        debugShowSemanticsDebugger: debugShowSemanticsDebugger ?? this.debugShowSemanticsDebugger);
  }
}
