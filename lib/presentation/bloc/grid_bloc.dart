import 'package:bloc/bloc.dart';
import 'package:fibo_grid/domain/entities/grid_cell.dart';
import 'package:fibo_grid/domain/logic/fibonacci_logic.dart';
import 'package:fibo_grid/domain/repositories/grid_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'grid_event.dart';
part 'grid_state.dart';
part 'grid_bloc.freezed.dart';

@injectable
class GridBloc extends Bloc<GridEvent, GridState> {
  final GridRepository repository;
  final FibonacciLogic logic = FibonacciLogic();

  GridBloc(this.repository) : super(const GridState.initial()) {
    on<_LoadGrid>(_onLoadGrid);
    on<_CellTapped>(_onCellTapped);
    on<_ResetHighlights>(_onResetHighlights);
  }

  Future<void> _onLoadGrid(_LoadGrid event, Emitter<GridState> emit) async {
    emit(const GridState.loading());
    final grid = await repository.loadGrid();
    emit(GridState.loaded(grid: grid));
  }

  Future<void> _onCellTapped(_CellTapped event, Emitter<GridState> emit) async {
    final currentState = state;
    if (currentState is! ValidGridState) return;

    final currentGrid = currentState.grid;

    final result = logic.updateGrid(
      currentGrid: currentGrid,
      tapX: event.x,
      tapY: event.y,
    );

    await repository.saveGrid(result.updatedGrid);

    emit(
      GridState.loaded(
        grid: result.updatedGrid,
        fibonacciCells: result.fibonacciCells,
        crossCells: result.crossCells,
      ),
    );

    Future.delayed(const Duration(milliseconds: 300), () {
      if (!isClosed) add(const GridEvent.resetHighlights(resetCross: true));
    });

    Future.delayed(const Duration(milliseconds: 800), () {
      if (!isClosed) add(const GridEvent.resetHighlights(resetFibo: true));
    });
  }

  void _onResetHighlights(_ResetHighlights event, Emitter<GridState> emit) {
    if (state is! ValidGridState) return;
    final s = state as ValidGridState;

    emit(
      s.copyWith(
        crossCells: event.resetCross ? [] : s.crossCells,
        fibonacciCells: event.resetFibo ? [] : s.fibonacciCells,

        grid: event.resetFibo
            ? _resetCellsValues(s.grid, s.fibonacciCells)
            : s.grid,
      ),
    );

    if (event.resetFibo && s.fibonacciCells.isNotEmpty) {
      final newGrid = _resetCellsValues(s.grid, s.fibonacciCells);
      repository.saveGrid(newGrid);
    }
  }

  Map<String, GridCell> _resetCellsValues(
    Map<String, GridCell> grid,
    List<GridCell> cellsToReset,
  ) {
    if (cellsToReset.isEmpty) return grid;
    final newGrid = Map<String, GridCell>.from(grid);
    for (final c in cellsToReset) {
      newGrid.remove("${c.x},${c.y}");
    }
    return newGrid;
  }
}

typedef ValidGridState = _$GridStateLoaded;
