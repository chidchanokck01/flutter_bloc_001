
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_001/data/models/calculation_model.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  // CalculatorBloc() : super(CalculatorInitial()) {
  //   on<CalculatorEvent>((event, emit) {
  //   });
  // }

  CalculatorBloc() : super(const CalculationInitial());

  @override
  Stream<CalculatorState> mapEventToState(CalculatorEvent event) async* {
    if (event is CalculateClear) {
      yield const CalculationInitial();
    }
  }

  Future<CalculatorState> _mapOperatorPressedToState(
    OperatorPressed event,
  ) async {
    List<String> allowedOperators = ['+', '-', '*', '/'];

    //find value in list
    if (!allowedOperators.contains(event.operator)) {
      return state;
    }

    CalculationModel model = state.calculationModel;

    CalculationModel newModel = state.calculationModel.copyWith(
        firstOperand: () =>
            model.firstOperand == null ? 0 : model.firstOperand!,
        operator: () => event.operator,
        secondOperand: () => model.secondOperand!,
        result: () => model.result ?? 0);

    return CalculationChanged(calculationModel: newModel);
  }

  Future<CalculatorState> _mapCalculateResultToState(
      CalculateResult event) async {
    CalculationModel model = state.calculationModel;
    if (model.operator == null || model.secondOperand == null) {
      return state;
    }
    int result = 0;

    switch (model.operator) {
      case '+':
        result = model.firstOperand! + model.secondOperand!;
        break;
      case '-':
        result = model.firstOperand! - model.secondOperand!;
        break;
      case '*':
        result = model.firstOperand! * model.secondOperand!;
        break;
      case '/':
        if (model.secondOperand == 0) {
          CalculationModel resultModel = const CalculationInitial()
              .calculationModel
              .copyWith(
                  firstOperand: () => 0,
                  secondOperand: () => 0,
                  result: () => result,
                  operator: () => '');

          return CalculationChanged(calculationModel: resultModel);
        }
        result = (model.firstOperand! / model.secondOperand!).truncate();

        break;
    }
    return state;
  }

  CalculationChanged _mapNumberPressedToState(
    NumberPressed event,
  ) {
    CalculationModel model = state.calculationModel;

    if (model.result != null) {
      CalculationModel newModel = model.copyWith(
          firstOperand: () => event.number,
          operator: () => model.operator!,
          secondOperand: () => model.secondOperand!,
          result: () => model.result!);
      return CalculationChanged(calculationModel: newModel);
    }
    if (model.firstOperand == null) {
      CalculationModel newModel = model.copyWith(
          firstOperand: () => event.number,
          operator: () => model.operator!,
          secondOperand: () => model.secondOperand!,
          result: () => model.result!);

      return CalculationChanged(calculationModel: newModel);
    }

    if (model.operator == null) {
      CalculationModel newModel = model.copyWith(
          firstOperand: () => int.parse('${model.firstOperand}${event.number}'),
          operator: () => model.operator!,
          secondOperand: () => model.secondOperand!,
          result: () => model.result!);

      return CalculationChanged(calculationModel: newModel);
    }

    if (model.secondOperand == null) {
      CalculationModel newModel = model.copyWith(
          firstOperand: () => model.firstOperand!,
          operator: () => model.operator!,
          secondOperand: () => event.number,
          result: () => model.result!);

      return CalculationChanged(calculationModel: newModel);
    }

    return CalculationChanged(
        calculationModel: model.copyWith(
            firstOperand: () => model.firstOperand!,
            operator: () => model.operator!,
            secondOperand: () =>
                int.parse('${model.secondOperand}${event.number}'),
            result: () => model.result!));
  }
}
