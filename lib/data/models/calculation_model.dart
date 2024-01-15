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
    return "$firstOperand$operator$secondOperand=$result";
  }

  CalculationModel copyWith({
      required int Function() firstOperand,
      required String Function() operator,
      required int Function() secondOperand,
      required int Function() result}) {
    return CalculationModel(
      firstOperand: firstOperand.call(),
      operator: operator.call(),
      secondOperand: secondOperand.call() ,
      result: result.call(),
    );
  }

  @override
  List<Object?> get props => [firstOperand, operator, secondOperand, result];
}
