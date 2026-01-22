import 'package:fibo_grid/domain/entities/grid_cell.dart';
import 'package:fibo_grid/domain/entities/grid_update_result.dart';

class FibonacciLogic {
  static const int defaultArmLength =
      7; 
  
  /// Checks if a list of numbers forms a Fibonacci sequence.
  /// The sequence must be at least [minLength] long.
  bool isFibonacciSequence(List<int> numbers, {int minLength = 5}) {
    if (numbers.length < minLength) return false;

    // Check forward
    if (_isFibo(numbers)) return true;

    // Check reverse (e.g. 5, 3, 2, 1, 1)
    if (_isFibo(numbers.reversed.toList())) return true;

    return false;
  }

  bool _isFibo(List<int> numbers) {
    if (numbers.isEmpty) return false;
  
    if (numbers.length < 3) return false; 
  
    final fibs = _getFibonacciSequence(100); 

    // Find all indices where fibs[i] == numbers[0]
    List<int> startIndices = [];
    for (int i = 0; i < fibs.length; i++) {
      if (fibs[i] == numbers[0]) {
        startIndices.add(i);
      }
    }

    for (final startIndex in startIndices) {
      bool match = true;
      for (int i = 0; i < numbers.length; i++) {
        if (startIndex + i >= fibs.length ||
            fibs[startIndex + i] != numbers[i]) {
          match = false;
          break;
        }
      }
      if (match) return true;
    }

    return false;
  }

  static List<int> _cachedFibs = [];
  List<int> _getFibonacciSequence(int count) {
    if (_cachedFibs.isNotEmpty && _cachedFibs.length >= count)
      return _cachedFibs;

    List<int> fibs = [1, 1];
    while (fibs.length < count) {
      fibs.add(fibs[fibs.length - 1] + fibs[fibs.length - 2]);
    }
    _cachedFibs = fibs;
    return fibs;
  }

  static const int _minSequenceLength = 5;

  /// Updates the grid by incrementing cells in a cross pattern and detecting
  /// Fibonacci sequences in all directions.
  GridUpdateResult updateGrid({
    required Map<String, GridCell> currentGrid,
    required int tapX,
    required int tapY,
    int armLength = defaultArmLength,
  }) {
    final newGrid = Map<String, GridCell>.from(currentGrid);
    final crossCells = <GridCell>[];

    _incrementCrossPattern(newGrid, crossCells, tapX, tapY, armLength);

    final lines = _organizeCellsIntoLines(newGrid);
    final fibonacciCells = _findFibonacciInAllLines(lines);
    final uniqueFibonacciCells = _deduplicateCells(fibonacciCells);

    return GridUpdateResult(
      updatedGrid: newGrid,
      fibonacciCells: uniqueFibonacciCells,
      crossCells: crossCells,
    );
  }

  /// Increments cells in a cross pattern (center + 4 directions).
  void _incrementCrossPattern(
    Map<String, GridCell> grid,
    List<GridCell> crossCells,
    int centerX,
    int centerY,
    int armLength,
  ) {
    void incrementCell(int x, int y) {
      final key = "$x,$y";
      final currentValue = grid[key]?.value ?? 0;
      final newCell = GridCell(x: x, y: y, value: currentValue + 1);
      grid[key] = newCell;
      crossCells.add(newCell);
    }

    // Increment center
    incrementCell(centerX, centerY);

    // Increment arms in all 4 directions
    for (int i = 1; i <= armLength; i++) {
      incrementCell(centerX + i, centerY); // Right
      incrementCell(centerX - i, centerY); // Left
      incrementCell(centerX, centerY + i); // Down
      incrementCell(centerX, centerY - i); // Up
    }
  }

  /// Organizes all non-zero cells into rows, columns, and diagonal lines.
  _GridLines _organizeCellsIntoLines(Map<String, GridCell> grid) {
    final rows = <int, List<GridCell>>{};
    final cols = <int, List<GridCell>>{};
    final mainDiags = <int, List<GridCell>>{};
    final antiDiags = <int, List<GridCell>>{};

    for (final cell in grid.values) {
      if (cell.value == 0) continue;

      rows.putIfAbsent(cell.y, () => []).add(cell);
      cols.putIfAbsent(cell.x, () => []).add(cell);
      mainDiags.putIfAbsent(cell.x - cell.y, () => []).add(cell);
      antiDiags.putIfAbsent(cell.x + cell.y, () => []).add(cell);
    }

    return _GridLines(
      rows: rows,
      cols: cols,
      mainDiagonals: mainDiags,
      antiDiagonals: antiDiags,
    );
  }

  /// Finds all Fibonacci sequences in rows, columns, and diagonals.
  List<GridCell> _findFibonacciInAllLines(_GridLines lines) {
    final fibonacciCells = <GridCell>[];

    for (final line in lines.rows.values) {
      _findFibonacciInLine(line, (c) => c.x, fibonacciCells);
    }
    for (final line in lines.cols.values) {
      _findFibonacciInLine(line, (c) => c.y, fibonacciCells);
    }
    for (final line in lines.mainDiagonals.values) {
      _findFibonacciInLine(line, (c) => c.x, fibonacciCells);
    }
    for (final line in lines.antiDiagonals.values) {
      _findFibonacciInLine(line, (c) => c.x, fibonacciCells);
    }

    return fibonacciCells;
  }

  /// Finds Fibonacci sequences within a single line of cells.
  void _findFibonacciInLine(
    List<GridCell> lineCells,
    int Function(GridCell) getPosition,
    List<GridCell> resultCollector,
  ) {
    if (lineCells.isEmpty) return;

    lineCells.sort((a, b) => getPosition(a).compareTo(getPosition(b)));

    final segments = _splitIntoContiguousSegments(lineCells, getPosition);

    for (final segment in segments) {
      _findFibonacciInSegment(segment, resultCollector);
    }
  }

  /// Splits a line of cells into contiguous segments (cells adjacent by position).
  List<List<GridCell>> _splitIntoContiguousSegments(
    List<GridCell> sortedCells,
    int Function(GridCell) getPosition,
  ) {
    final segments = <List<GridCell>>[];
    var currentSegment = [sortedCells.first];

    for (int i = 1; i < sortedCells.length; i++) {
      final isAdjacent =
          getPosition(sortedCells[i]) == getPosition(sortedCells[i - 1]) + 1;

      if (isAdjacent) {
        currentSegment.add(sortedCells[i]);
      } else {
        segments.add(currentSegment);
        currentSegment = [sortedCells[i]];
      }
    }
    segments.add(currentSegment);

    return segments;
  }

  /// Finds all Fibonacci sequences within a contiguous segment of cells.
  void _findFibonacciInSegment(
    List<GridCell> segment,
    List<GridCell> resultCollector,
  ) {
    if (segment.length < _minSequenceLength) return;

    final values = segment.map((c) => c.value).toList();

    // Check all possible subsequences
    for (int i = 0; i < values.length; i++) {
      for (int j = i + _minSequenceLength; j <= values.length; j++) {
        final subValues = values.sublist(i, j);
        if (isFibonacciSequence(subValues, minLength: _minSequenceLength)) {
          resultCollector.addAll(segment.sublist(i, j));
        }
      }
    }
  }

  /// Removes duplicate cells from a list based on their coordinates.
  List<GridCell> _deduplicateCells(List<GridCell> cells) {
    final uniqueKeys = <String>{};
    final uniqueCells = <GridCell>[];

    for (var cell in cells) {
      if (uniqueKeys.add("${cell.x},${cell.y}")) {
        uniqueCells.add(cell);
      }
    }

    return uniqueCells;
  }
}

/// Helper class to organize grid cells into different line types.
class _GridLines {
  final Map<int, List<GridCell>> rows;
  final Map<int, List<GridCell>> cols;
  final Map<int, List<GridCell>> mainDiagonals;
  final Map<int, List<GridCell>> antiDiagonals;

  _GridLines({
    required this.rows,
    required this.cols,
    required this.mainDiagonals,
    required this.antiDiagonals,
  });
}
