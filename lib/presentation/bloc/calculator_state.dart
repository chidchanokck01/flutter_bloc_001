part of 'calculator_bloc.dart';

abstract class CalculatorState extends Equatable {
  final CalculationModel calculationModel;

  const CalculatorState({required this.calculationModel});

  @override
  List<Object> get props => [calculationModel];
}

class CalculationInitial extends CalculatorState {
  const CalculationInitial()
      : super(calculationModel: const CalculationModel());
}

class CalculationChanged extends CalculatorState {
  @override
  final CalculationModel calculationModel;

  const CalculationChanged({required this.calculationModel})
      : super(calculationModel: calculationModel);

  @override
  List<Object> get props => [calculationModel];
}
