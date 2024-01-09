import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_001/cubit/navigation_cubit.dart';
import 'package:flutter_bloc_001/detailpage/bloc/detailpage_bloc.dart';
import 'package:flutter_bloc_001/homepage/bloc/homepage_bloc.dart';
import 'package:flutter_bloc_001/page/detail_page.dart';
import 'package:flutter_bloc_001/page/home_page.dart';
import 'package:flutter_bloc_001/root_router.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MultiBlocProvider(
      providers: [
        BlocProvider<NavigationCubit>(
          create: (BuildContext context) => NavigationCubit(),
        ),
      ],
      child: HomePage(),
    ));
  }
}

//   @override
//   Widget build(BuildContext context) => MultiBlocProvider(
//           providers: [
//             BlocProvider(
//               create: (context) => NavigationCubit(),
//               child: const HomePage(),
//             ),
//           ],
//           child: MaterialApp(
//               theme: ThemeData.from(
//                 colorScheme: ColorScheme.fromSwatch(
//                   primarySwatch: Colors.blue,
//                 ).copyWith(secondary: Colors.yellow),
//               ),
//               home: MaterialApp(
//                   home: BlocProvider(
//                       create: (_) => NavigationCubit(),
//                       child: MaterialApp.router(
//                         routerConfig: GoRouter(routes: [
//                           GoRoute(
//                             path: '/',
//                             pageBuilder: (context, state) => MaterialPage<void>(
//                               key: state.pageKey,
//                               child: const HomePage(),
//                             ),
//                           ),
//                           GoRoute(
//                             path: '/detail',
//                             pageBuilder: (context, state) => MaterialPage<void>(
//                               key: state.pageKey,
//                               child: const DetailPage(),
//                             ),
//                           )
//                         ]),
//                       )))));
// }
