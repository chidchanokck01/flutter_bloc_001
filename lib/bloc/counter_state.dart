part of 'counter_bloc.dart';

// @immutable
// sealed class CounterState {
//   const CounterState();

//   // Object? get count => null;
// }

abstract class CounterState extends Equatable {
  const CounterState();
}

class CounterRunningState extends CounterState {
  final int count;
  const CounterRunningState({required this.count});

  @override
  List<Object> get props => [count];
}


// final class CounterInitial extends CounterState {}

// class CounterRunningState extends CounterState {
//   final int count;
//   const CounterRunningState({required this.count});

//   @override
//   List<Object> get props => [count];
// }

// abstract class CounterState {
//   const CounterState();
// }

// class CounterRunningState extends CounterState {
//   final int count;
//   CounterRunningState({required this.count});

//   @override
//   List<Object> get props => [count];
// }


// @immutable
// class CounterRunningState extends CounterState {
//   const CounterRunningState({required this.count});
//   final int count;

//   CounterRunningState copyWith({int? count}) {
//     return CounterRunningState(count: count ?? this.count);
//   }

//   @override
//   String toString() {
//     return "count: $count";
//   }

//   @override
//   List<Object> get props => [count];
// }