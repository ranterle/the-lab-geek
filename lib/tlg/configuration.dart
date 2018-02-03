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

enum TlgTheme { light, dark }

class TlgConfiguration {
  TlgConfiguration({
    this.theme = TlgTheme.light,
    this.debug = false,
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
  final bool debug;
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
    debug,
    debugShowGrid,
    debugShowSizes,
    debugShowBaselines,
    debugShowLayers,
    debugShowPointers,
    debugShowRainbow,
    debugShowPerformanceOverlay,
    debugShowSemanticsDebugger,
  }) {
    return new TlgConfiguration(
        theme: theme ?? this.theme,
        debug: debug ?? this.debug,
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
