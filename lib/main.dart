import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_001/presentation/bloc/homepage_bloc.dart';
import 'package:flutter_bloc_001/presentation/page/detail_page.dart';
import 'package:flutter_bloc_001/presentation/page/home_page.dart';
import 'package:go_router/go_router.dart';

part 'router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomepageBloc>(
          create: (BuildContext context) => HomepageBloc(),
        ),
      ],
      // child: const MaterialApp(
      //   home: HomePage(),
      // ),
      child: MaterialApp(
        routes: {
          '/': (context) => const HomePage(),
          '/detail': (context) => const DetailPage(),
        },
      ),
    );
  }
}
