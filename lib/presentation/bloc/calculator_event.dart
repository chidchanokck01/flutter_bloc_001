part of 'calculator_bloc.dart';

sealed class CalculatorEvent extends Equatable {
  const CalculatorEvent();
}

class NumberPressed extends CalculatorEvent {
  final int number;

  const NumberPressed({required this.number});

  @override
  List<Object?> get props => [number];
}

class OperatorPressed extends CalculatorEvent {
  final String operator;

  const OperatorPressed({required this.operator});

  @override
  List<Object?> get props => [operator];

}

class CalculateResult extends CalculatorEvent {
  @override
  List<Object?> get props => [];
}

class CalculateClear extends CalculatorEvent {
  @override
  List<Object?> get props => [];
}
