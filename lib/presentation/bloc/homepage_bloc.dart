import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'homepage_event.dart';
part 'homepage_state.dart';

class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  HomepageBloc() : super(HomepageInitial()) {
    on<HomepageEvent>((event, emit) {});

    // Add DrawCircleState
    on<DrawCircleEvent>((event, emit) {
      // print(changeColor());
      emit(DrawCircleState(changeColor()));
    });

    // Add DrawSquareState
    on<DrawSquareEvent>((event, emit) {
      emit(DrawSquareState(changeColor()));
    });

    // // Add Event
    // on<CounterAEventAdd>((event, emit) {
    //   print(state.counts + 1);
    //   emit(CounterAState(count: state.counts + 1));
    // });

    // // Reset Event
    // on<CounterAEventReset>((event, emit) {
    //   emit(CounterAState(count: 0));
    // });
  }



  @override
  MaterialColor changeColor() {
    var list = [
      Colors.red,
      Colors.yellow,
      Colors.orange,
      Colors.green,
      Colors.blue
    ];

    final random = Random();
    MaterialColor element = list[random.nextInt(list.length)];
    return element;
  }
}
