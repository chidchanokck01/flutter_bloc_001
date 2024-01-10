part of 'detailpage_bloc.dart';

// sealed class DetailpageEvent extends Equatable {
//   const DetailpageEvent();

//   @override
//   List<Object> get props => [];
// }

abstract class CounterEvent extends Equatable {
  const CounterEvent();
}

class DetailpageEvent extends CounterEvent {
  DetailpageEvent();

  @override
  List<Object> get props => [];
}
