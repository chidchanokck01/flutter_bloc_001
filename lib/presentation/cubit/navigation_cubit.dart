import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(HomePageState());

  void goToHome() => emit(HomePageState());
  // void goToDetail() => emit(DetailPageState());

  void goToDetail() {
    var list = [
      Colors.red,
      Colors.yellow,
      Colors.orange,
      Colors.green,
      Colors.blue
    ];

    final random = Random();
    Color element = list[random.nextInt(list.length)];
    emit(DetailPageState(element));
  }
}
