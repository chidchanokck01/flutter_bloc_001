import 'package:equatable/equatable.dart';

class CalculationModel extends Equatable {
  const CalculationModel({
    this.firstOperand = 0,
    this.operator,
    this.secondOperand,
    this.result,
  });
  final int? firstOperand;
  final String? operator;
  final int? secondOperand;
  final int? result;

  @override
  String toString() {
    return "$firstOperand$operator$secondOperand=$result";
  }

  @override
  List<Object?> get props => [firstOperand, operator, secondOperand, result];
}
