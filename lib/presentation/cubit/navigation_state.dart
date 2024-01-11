part of 'navigation_cubit.dart';

abstract class NavigationState extends Equatable {
  const NavigationState();
  @override
  List<Object?> get props => [];
  Color? get colorBg => Colors.black;
}

class HomePageState extends NavigationState {}

class DetailPageState extends NavigationState {
  final Color? colorContent;
  const DetailPageState(this.colorContent);

  @override
  Color? get colorBg => colorContent;
}
