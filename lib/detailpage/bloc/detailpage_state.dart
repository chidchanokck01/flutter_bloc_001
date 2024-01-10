part of 'detailpage_bloc.dart';

sealed class DetailpageState extends Equatable {
  const DetailpageState();

  @override
  List<Object> get props => [];
}

final class DetailpageInitial extends DetailpageState {}

final class DetailpageLoaded extends DetailpageState {}
