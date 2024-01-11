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

    return CalculationChanged(
      calculationModel: CalculationModel(
        firstOperand: model.firstOperand,
        operator: model.operator,
        secondOperand: model.secondOperand,
        result: model.result
      )
    );

  }

  
}
