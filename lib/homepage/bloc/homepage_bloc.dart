import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'homepage_event.dart';
part 'homepage_state.dart';

class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  HomepageBloc() : super(HomepageInitial()) {
    // on<HomepageEvent>((event, emit) {
    //   // print(state);
    //   if (event is DrawCircleEvent) {
    //     emit(DrawCircleState(changeColor()));
    //   } else if (event is DrawSquareState) {
    //     emit(DrawSquareState(changeColor()));
    //   }
    // });

    // Add DrawCircleState
    on<DrawCircleEvent>((event, emit) {
      print(changeColor());
      emit(DrawCircleState(changeColor()));
    });

    // Add DrawSquareState
    on<DrawSquareEvent>((event, emit) {
      emit(DrawSquareState(changeColor()));
    });

    onChange(Change<HomepageState> change) {
      print('change');
    }
  }

  // @override // WORKING
  // void onChange(Change<HomepageState> change) {
  //   super.onChange(change);
  //   print(change);
  // }

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
