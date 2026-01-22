import 'package:auto_route/auto_route.dart';
import 'package:fibo_grid/presentation/bloc/grid_bloc.dart';
import 'package:fibo_grid/core/di/injection.dart';
import 'package:fibo_grid/domain/entities/grid_cell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class InfiniteGridPage extends StatelessWidget {
  const InfiniteGridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GridBloc>()..add(const GridEvent.loadGrid()),
      child: const _GridBody(),
    );
  }
}

class _GridBody extends StatelessWidget {
  const _GridBody();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fibonacci Grid')),
      body: BlocBuilder<GridBloc, GridState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (grid, fiboCells, crossCells) {
              return _InfiniteGridView(
                grid: grid,
                fiboCells: fiboCells,
                crossCells: crossCells,
              );
            },
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}

class _InfiniteGridView extends StatefulWidget {
  final Map<String, GridCell> grid;
  final List<GridCell> fiboCells;
  final List<GridCell> crossCells;

  const _InfiniteGridView({
    required this.grid,
    required this.fiboCells,
    required this.crossCells,
  });

  @override
  State<_InfiniteGridView> createState() => _InfiniteGridViewState();
}

class _InfiniteGridViewState extends State<_InfiniteGridView> {
  late final TransformationController _transformationController;

  @override
  void initState() {
    super.initState();
    _transformationController = TransformationController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _centerGrid();
    });
  }

  void _centerGrid() {
    if (!mounted) return;
    final Size screenSize = MediaQuery.of(context).size;
    const double canvasCenter = _GridCanvasState.center;
    final double offsetX = screenSize.width / 2 - canvasCenter;
    final double offsetY = screenSize.height / 2 - canvasCenter;
    final Matrix4 matrix = Matrix4.identity()..translate(offsetX, offsetY);
    _transformationController.value = matrix;
  }

  @override
  void dispose() {
    _transformationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double cellSize = 50.0;

    return LayoutBuilder(
      builder: (context, constraints) {
        return InteractiveViewer(
          minScale: 0.1,
          maxScale: 3.0,
          alignment: Alignment.center,
          constrained: false,
          transformationController: _transformationController,
          child: _GridCanvas(
            grid: widget.grid,
            fiboCells: widget.fiboCells,
            crossCells: widget.crossCells,
            cellSize: cellSize,
            onTap: (x, y) {
              context.read<GridBloc>().add(GridEvent.cellTapped(x, y));
            },
          ),
        );
      },
    );
  }
}

class _GridCanvas extends StatefulWidget {
  final Map<String, GridCell> grid;
  final List<GridCell> fiboCells;
  final List<GridCell> crossCells;
  final double cellSize;
  final Function(int x, int y) onTap;

  const _GridCanvas({
    required this.grid,
    required this.fiboCells,
    required this.crossCells,
    required this.cellSize,
    required this.onTap,
  });

  @override
  State<_GridCanvas> createState() => _GridCanvasState();
}

class _GridCanvasState extends State<_GridCanvas> {
  static const double canvasSize = 100000.0;
  static const double center = canvasSize / 2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (details) {
        final local = details.localPosition;
        final dx = local.dx - center;
        final dy = local.dy - center;

        int gridX = (dx / widget.cellSize).floor();
        int gridY = (dy / widget.cellSize).floor();

        widget.onTap(gridX, gridY);
      },
      child: Container(
        width: canvasSize,
        height: canvasSize,
        color: Colors.black87, // Dark theme
        child: CustomPaint(
          painter: GridPainter(
            grid: widget.grid,
            fiboCells: widget.fiboCells,
            crossCells: widget.crossCells,
            cellSize: widget.cellSize,
            centerOffset: const Offset(center, center),
          ),
        ),
      ),
    );
  }
}

class GridPainter extends CustomPainter {
  final Map<String, GridCell> grid;
  final List<GridCell> fiboCells;
  final List<GridCell> crossCells;
  final double cellSize;
  final Offset centerOffset;

  GridPainter({
    required this.grid,
    required this.fiboCells,
    required this.crossCells,
    required this.cellSize,
    required this.centerOffset,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paintText = TextPainter(textDirection: TextDirection.ltr);
    final boxPaint = Paint()..style = PaintingStyle.fill;
    final borderPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.white10;

    for (var cell in grid.values) {
      final rect = Rect.fromLTWH(
        centerOffset.dx + cell.x * cellSize,
        centerOffset.dy + cell.y * cellSize,
        cellSize,
        cellSize,
      );

      Color color = Colors.grey[800]!;

      bool isFibo = fiboCells.any((c) => c.x == cell.x && c.y == cell.y);
      bool isCross = crossCells.any((c) => c.x == cell.x && c.y == cell.y);

      if (isFibo) {
        color = Colors.greenAccent;
      } else if (isCross) {
        color = Colors.amber;
      }

      boxPaint.color = color;
      canvas.drawRect(rect, boxPaint);
      canvas.drawRect(rect, borderPaint);

      paintText.text = TextSpan(
        text: '${cell.value}',
        style: TextStyle(
          color: isFibo || isCross ? Colors.black : Colors.white,
          fontSize: 14,
        ),
      );
      paintText.layout();
      paintText.paint(
        canvas,
        rect.center - Offset(paintText.width / 2, paintText.height / 2),
      );
    }
  }

  @override
  bool shouldRepaint(covariant GridPainter oldDelegate) {
    return oldDelegate.grid != grid ||
        oldDelegate.fiboCells != fiboCells ||
        oldDelegate.crossCells != crossCells;
  }
}
