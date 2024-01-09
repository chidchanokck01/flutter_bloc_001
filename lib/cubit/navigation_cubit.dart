import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_state.dart';

// class NavigationCubit extends Cubit<NavigationState> {
//   NavigationCubit() : super(const HomePageState());

//   void goToHomePage([String? text]) => emit(HomePageState(text));
//   // void goToDetailPage([String? text]) => emit(DetailPageState(text));
//   void goToDetailPage([String? text]) {
//     emit(DetailPageState(text));
//     if (state is DetailPageState) {
//       print('stateif');

//     } else {
//       print('else');

//       goToHomePage();
//     }
//   }

// }

// enum NavigationState { home, detail }

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const HomePageState());

  void goToHome() => emit(const HomePageState());
  // void goToDetail() => emit(const DetailPageState());

  void goToDetail() {
    print(state);
    emit(const DetailPageState('eee'));
    

  }
}
