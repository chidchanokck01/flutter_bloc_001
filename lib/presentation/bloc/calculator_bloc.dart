import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_001/data/models/calculation_model.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(const CalculationInitial()) {
    // on<CalculateClear>((event, emit) {
    //   print('CalculateClear');
    //   emit(const CalculationInitial());
    // });

    on<CalculateClear>((event, emit) async {
      CalculationModel model = state.calculationModel;
      CalculationModel newModel = model.copyWith(
          firstOperand: null,
          operator: null,
          secondOperand: null,
          result: null);
      emit(CalculationChanged(calculationModel: newModel));
    });

    on<OperatorPressed>((event, emit) async {
      List<String> allowedOperators = ['+', '-', '*', '/'];

      //find value in list
      if (!allowedOperators.contains(event.operator)) state;

      CalculationModel model = state.calculationModel;

      CalculationModel newModel = state.calculationModel.copyWith(
          firstOperand: model.firstOperand == null ? 0 : model.firstOperand,
          operator: event.operator);

      emit(CalculationChanged(calculationModel: newModel));
    });

    on<NumberPressed>((event, emit) async {
      CalculationModel model = state.calculationModel;
      CalculationModel newModel;

      if (model.result != null) {
        newModel = model.copyWith(firstOperand: event.number, result: null);
        emit(CalculationChanged(calculationModel: newModel));
      } else {
        if (model.operator == null) {
          newModel = model.copyWith(firstOperand: event.number, result: null);
          emit(CalculationChanged(calculationModel: newModel));
        }
      }

      if (model.firstOperand == null) {
        newModel = model.copyWith(firstOperand: event.number);
        emit(CalculationChanged(calculationModel: newModel));
      } else {
        if (model.operator == null) {
          newModel = model.copyWith(firstOperand: event.number);
          emit(CalculationChanged(calculationModel: newModel));
        }
      }
      if (model.secondOperand == null &&
          model.operator != null &&
          model.firstOperand != null) {
        newModel = model.copyWith(
            firstOperand: model.firstOperand,
            operator: model.operator,
            secondOperand: event.number);
        emit(CalculationChanged(calculationModel: newModel));
      } else if (model.secondOperand != null && model.result == null) {
        newModel = model.copyWith(
            firstOperand: model.firstOperand,
            operator: model.operator,
            secondOperand: event.number);
        emit(CalculationChanged(calculationModel: newModel));
      }
    });

    on<CalculateResult>((event, emit) async {
      CalculationModel model = state.calculationModel;
      CalculationModel newModel;

      if (model.operator == null || model.secondOperand == null) state;

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
            CalculationModel resultModel =
                const CalculationInitial().calculationModel.copyWith(
                      firstOperand: 0,
                    );

            emit(CalculationChanged(calculationModel: resultModel));
          }

          result = (model.firstOperand! / model.secondOperand!).truncate();
          CalculationModel resultModel = const CalculationInitial()
              .calculationModel
              .copyWith(result: result);
          emit(CalculationChanged(calculationModel: resultModel));
          break;
      }

      newModel = model.copyWith(
          firstOperand: model.firstOperand,
          operator: model.operator,
          secondOperand: model.secondOperand,
          result: result);
      emit(CalculationChanged(calculationModel: newModel));
    });
  }
}
