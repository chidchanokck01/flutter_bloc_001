part of 'homepage_bloc.dart';

// sealed class HomepageState extends Equatable {
//   const HomepageState();

//   @override
//   List<Object> get props => [];
// }

abstract class HomepageState extends Equatable {
  const HomepageState();
}

final class HomepageInitial extends HomepageState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

final class HomepageLoading extends HomepageState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

final class HomepageLoadSuccess extends HomepageState {
  @override
  List<Object?> get props => throw UnimplementedError();
}
