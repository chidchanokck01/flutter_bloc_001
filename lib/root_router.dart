// import 'package:flutter/material.dart';
// import 'package:flutter_bloc_001/cubit/navigation_cubit.dart';
// import 'package:flutter_bloc_001/page/home_page.dart';

// class RootRouterDelegate extends RouterDelegate<NavigationState> {
//   final GlobalKey<NavigatorState> _navigatorKey;
//   final NavigationCubit _routerCubit;
//   RootRouterDelegate(
//       GlobalKey<NavigatorState> navigatorKey, NavigationCubit routerCubit)
//       : _navigatorKey = navigatorKey,
//         _routerCubit = routerCubit;
//   GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;
//   @override
//   Widget build(BuildContext context) => Navigator(
//         key: navigatorKey,
//         pages: List.from([
//           _materialPage(valueKey: "mainScreen", child: const HomePage()),
//           // ..._extraPages,
//         ]),
//         onPopPage: _onPopPageParser,
//       );
//   bool _onPopPageParser(Route<dynamic> route, dynamic result) {
//     if (!route.didPop(result)) return false;
//     popRoute();
//     return true;
//   }

//   @override
//   Future<bool> popRoute() async {
//     if (_extraPages.isNotEmpty) {
//       _routerCubit.popExtra();
//       return true;
//     }
//     if (_routerCubit.state is! HomePageState) {
//       _routerCubit.goToHomePage();
//       return true;
//     }
//     return await _confirmAppExit();
//   }

//   List<Page> get _extraPages {
//     // String? extraPageContent;
//     // if (_routerCubit.state is HomePageState) {
//     //   extraPageContent = (_routerCubit.state as HomePageState).extraPageContent;
//     //   return [
//     //     if (extraPageContent?.isNotEmpty ?? false)
//     //       _materialPage(
//     //         valueKey: "page-1-extra",
//     //         child: SecondLevelScreen(text: extraPageContent!),
//     //       ),
//     //   ];
//     // }
//     // if (_routerCubit.state is DetailPageState) {
//     //   extraPageContent =
//     //       (_routerCubit.state as DetailPageState).extraPageContent;
//     //   return [
//     //     if (extraPageContent?.isNotEmpty ?? false)
//     //       _materialPage(
//     //         valueKey: "page-2-extra",
//     //         child: SecondLevelScreen(text: extraPageContent!),
//     //       ),
//     //   ];
//     // }

//     return [];
//   }

//   Future<bool> _confirmAppExit() async =>
//       await showDialog<bool>(
//           context: navigatorKey.currentContext!,
//           builder: (context) {
//             return AlertDialog(
//               title: const Text("Exit App"),
//               content: const Text("Are you sure you want to exit the app?"),
//               actions: [
//                 TextButton(
//                   child: const Text("Cancel"),
//                   onPressed: () => Navigator.pop(context, true),
//                 ),
//                 TextButton(
//                   child: const Text("Confirm"),
//                   onPressed: () => Navigator.pop(context, false),
//                 ),
//               ],
//             );
//           }) ??
//       true;
//   Page _materialPage({
//     required String valueKey,
//     required Widget child,
//   }) =>
//       MaterialPage(
//         key: ValueKey<String>(valueKey),
//         child: child,
//       );
// //It's not needed for bloc/cubit
//   @override
//   void addListener(VoidCallback listener) {}
// //It's not needed for bloc/cubit
//   @override
//   void removeListener(VoidCallback listener) {}
// //It's not needed for now
//   @override
//   Future<void> setNewRoutePath(NavigationState configuration) async {}
// }
