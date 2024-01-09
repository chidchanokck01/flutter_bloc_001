part of 'navigation_cubit.dart';

abstract class NavigationState extends Equatable {
  const NavigationState();
  @override
  List<Object?> get props => [];
}

class HomePageState extends NavigationState {
  final String? extraPageContent;
  const HomePageState([this.extraPageContent]);
  @override
  List<Object?> get props => [extraPageContent];
}

class DetailPageState extends NavigationState {
  final String? extraPageContent;
  const DetailPageState([this.extraPageContent]);

  @override
  List<Object?> get props => [extraPageContent];
}
