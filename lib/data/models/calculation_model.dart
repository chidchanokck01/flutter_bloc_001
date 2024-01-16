import 'package:equatable/equatable.dart';

class CalculationModel extends Equatable {
  const CalculationModel({
    this.firstOperand,
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
    if (firstOperand == null &&
        operator == null &&
        secondOperand == null &&
        result == null) {
      return "0";
    }
    if (operator == null) {
      return "$firstOperand";
    }
    if (secondOperand == null) {
      return "$firstOperand$operator";
    }
    if (result == null) {
      return "$firstOperand$operator$secondOperand";
    }

    return "$firstOperand$operator$secondOperand=$result";
  }

  CalculationModel copyWith(
      {int? firstOperand, String? operator, int? secondOperand, int? result}) {
    return CalculationModel(
      firstOperand: firstOperand,
      operator: operator,
      secondOperand: secondOperand,
      result: result,
    );
  }

  @override
  List<Object?> get props => [firstOperand, operator, secondOperand, result];
}
