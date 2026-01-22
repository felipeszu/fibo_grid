# fibo_grid

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# Fibonacci Grid

A Flutter application that implements an interactive infinite grid with automatic Fibonacci sequence detection.

## 📋 Description

This project implements an infinite grid where users can tap on cells to increment their values in a cross pattern. When a Fibonacci sequence is detected (horizontal, vertical, or diagonal), the cells are highlighted and then reset.

## ✨ Features

- **Interactive Infinite Grid**: Smooth navigation with zoom and pan using `InteractiveViewer`
- **Cross Increment**: When tapping a cell, it and its adjacent cells (in a cross pattern) are incremented
- **Fibonacci Detection**: Automatically identifies Fibonacci sequences in all directions:
  - Horizontal
  - Vertical  
  - Main diagonal
  - Secondary diagonal
- **Visual Highlighting**: 
  - Cross cells glow in yellow for 300ms
  - Fibonacci sequence cells glow in green for 800ms
- **Persistence**: Grid state is automatically saved using Hive
- **Bidirectional Sequences**: Detects both progressive (1,1,2,3,5) and regressive (5,3,2,1,1) sequences

## 🏗️ Architecture

The project follows **Clean Architecture** principles with clear separation of concerns:

```
lib/
├── core/
│   └── di/                    # Dependency Injection (GetIt + Injectable)
├── domain/
│   ├── entities/              # Domain entities (GridCell, GridUpdateResult)
│   ├── logic/                 # Business logic (FibonacciLogic)
│   └── repositories/          # Repository interfaces
├── data/
│   └── repositories/          # Repository implementations (Hive)
└── presentation/
    ├── bloc/                  # State management (BLoC)
    └── pages/                 # UI and widgets
```

### Technologies Used

- **State Management**: `flutter_bloc` - Reactive and predictable state management
- **Code Generation**: `freezed` - Immutable classes and union types
- **Dependency Injection**: `get_it` + `injectable` - Dependency injection
- **Persistence**: `hive_ce` - Fast and lightweight NoSQL database
- **Testing**: `flutter_test` - Unit testing

## 🚀 How to Run

### Prerequisites

- Flutter SDK ^3.7.0
- Dart SDK ^3.7.0

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd fibonacci_grid
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run code generators:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

4. Run the application:
```bash
flutter run
```

## 🧪 Testing

Run unit tests:

```bash
flutter test
```

## 🎯 Business Rules

1. **Cross Increment**: When tapping `(x, y)`, increments:
   - The center cell `(x, y)`
   - 5 cells in each direction: `(x±n, y)` and `(x, y±n)` where n = 1 to 5

2. **Fibonacci Sequence**: 
   - Minimum of 5 consecutive numbers
   - Must be a valid subsequence of the Fibonacci series: 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89...
   - Valid example: `[2, 3, 5, 8, 13]`
   - Invalid example: `[1, 2, 3, 4, 5]`

3. **Automatic Reset**: Cells that form a Fibonacci sequence are reset to 0 after 800ms

4. **Persistence**: All changes are automatically saved

## 🎨 Interface

- **Dark Theme**: Modern interface with dark background
- **Gray Cells**: Default state
- **Yellow Cells**: Part of cross increment (300ms)
- **Green Cells**: Part of Fibonacci sequence (800ms)
- **Automatic Centering**: Grid starts centered at point (0, 0)

## 📱 Supported Platforms

- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

## 🔍 Technical Details

### Optimizations

- **Virtual Viewport**: Renders only visible cells for performance
- **Efficient Detection**: Optimized algorithm to detect sequences in O(n²) per line
- **Fibonacci Cache**: Pre-calculates Fibonacci numbers for fast lookup
- **Asynchronous Persistence**: Saving doesn't block the UI

### Data Structure

- **Grid**: `Map<String, GridCell>` - Uses coordinates as key ("x,y")
- **Coordinates**: Cartesian system with origin (0,0) at the center
- **Cells**: Stores only cells with value > 0 for efficiency

## 📝 License

This project was developed as a technical assessment.

## 👤 Author

Felipe Franco
