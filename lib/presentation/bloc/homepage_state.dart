part of 'homepage_bloc.dart';

abstract class HomepageState extends Equatable {
  const HomepageState();
  @override
  List<Object?> get props => [];
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

class CounterAState extends HomepageState {
  final int? number;
  const CounterAState(this.number);

  CounterAState copyWith(int? number) {
    return CounterAState(number ?? this.number);
  }

  @override
  List<Object?> get props => [number];
}
