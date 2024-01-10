part of 'homepage_bloc.dart';

// sealed class HomepageEvent extends Equatable {
//   const HomepageEvent();

//   @override
//   List<Object> get props => [];
// }


enum HomepageEvent { eventA, eventB }

@immutable
abstract class MyState {}

class StateA extends MyState {}

class StateB extends MyState {}

