part of 'homepage_bloc.dart';

abstract class HomepageState extends Equatable {
  const HomepageState();
  @override
  List<Object?> get props => [];
  int? get count => 0;
}

final class HomepageInitial extends HomepageState {}

// @override
class DrawCircleState extends HomepageState {
  final MaterialColor? colors;
  const DrawCircleState(this.colors);

  DrawCircleState copyWith(MaterialColor? colors) {
    return DrawCircleState(colors ?? this.colors);
  }

  @override
  List<Object?> get props => [colors];
}

class DrawSquareState extends HomepageState {
  final MaterialColor? colors;
  const DrawSquareState(this.colors);

  DrawSquareState copyWith(MaterialColor? colors) {
    return DrawSquareState(colors ?? this.colors);
  }

  @override
  List<Object?> get props => [colors];
}

class CounterState extends HomepageState {
  @override
  final int? count;
  const CounterState(this.count);

  CounterState copyWith(int? count) {
    return CounterState(count ?? this.count);
  }

  @override
  List<Object?> get props => [count];
}

class CounterReset extends HomepageState {
  @override
  const CounterReset();

  @override
  List<Object?> get props => [0];
}
