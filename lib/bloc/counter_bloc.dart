// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';

// part 'counter_event.dart';
// part 'counter_state.dart';

// class CounterBloc extends Bloc<CounterEvent, CounterState> {
//   CounterBloc(super.initialState);

//   @override
//   CounterState get initialState => CounterRunningState(count: 0);

//   @override
//   Stream<CounterState> mapEventToState(
//     CounterEvent event,
//   ) async* {
//     int _current = (state as CounterRunningState).count;
//     if (event is CounterIncrement) {
//       yield CounterRunningState(count: _current + event.count);
//     } else if (event is CounterDecrement) {
//       yield CounterRunningState(count: _current - event.count);
//     }
//   }
// }

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc(super.initialState);

  // CounterBloc(super.initialState);

  // CounterBloc() : super(CounterRunningState(count: 0)) {
  //   on<CounterIncrement>((event, emit) {
  //     // int current = (state as CounterRunningState).count;
  //     // print(current);
  //     // print(state);
  //     // print(event);
  //     // emit(CounterRunningState(count: current + 1));
  //   });
  // }

  @override
  CounterState get initialState => CounterRunningState(count: 0);

  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    print(event);
    print(state);
    print('mapEventToState');
    int current = (state as CounterRunningState).count;
    if (event is CounterIncrement) {
      print('CounterIncrement');
      print(current + event.count);
      // yield CounterRunningState(count: current + event.count);
      // emit(CounterRunningState(count: current + event.count));
    } else if (event is CounterDecrement) {
      yield CounterRunningState(count: current - event.count);
    }
  }
}
