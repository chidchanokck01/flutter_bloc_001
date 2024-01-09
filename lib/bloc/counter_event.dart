// part of 'counter_bloc.dart';

// @immutable
// sealed class CounterEvent {
//   const CounterEvent();
// }

// class CounterIncrement extends CounterEvent {
//   final int count;
//   const CounterIncrement({required this.count});

//   List<Object> get props => [count];
// }

// class CounterDecrement extends CounterEvent {
//   final int count;
//   const CounterDecrement({required this.count});

//   List<Object> get props => [count];
// }

part of 'counter_bloc.dart';

// @immutable
// sealed class CounterEvent {
//   const CounterEvent();
// }

// class CounterIncrement extends CounterEvent {
//   // final int count;
//   // CounterIncrement({required this.count});

//   // @override
//   // List<Object> get props => [count];
// }

// class CounterDecrement extends CounterEvent {
//   final int count;
//   CounterDecrement({required this.count});

//   @override
//   List<Object> get props => [count];
// }

abstract class CounterEvent extends Equatable {
  const CounterEvent();
}

class CounterIncrement extends CounterEvent {
  final int count;
  const CounterIncrement({required this.count});

  @override
  List<Object> get props => [count];
}

class CounterDecrement extends CounterEvent {
  final int count;
  const CounterDecrement({required this.count});

  @override
  List<Object> get props => [count];
}
