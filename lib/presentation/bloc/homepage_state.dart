part of 'homepage_bloc.dart';

abstract class HomepageState extends Equatable {
  const HomepageState();
  @override
  List<Object?> get props => [];
  MaterialColor? get color => Colors.blueGrey;
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
  MaterialColor? get color => colors;
}

// @override
class DrawSquareState extends HomepageState {
  final MaterialColor? colors;
  const DrawSquareState(this.colors);

  @override
  MaterialColor? get color => colors;
}


