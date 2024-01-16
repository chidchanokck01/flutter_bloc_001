import 'package:flutter/material.dart';
import 'package:flutter_bloc_001/presentation/page/calculator2_page.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_001/presentation/bloc/calculator_bloc.dart';
import 'package:flutter_bloc_001/presentation/bloc/homepage_bloc.dart';
import 'package:flutter_bloc_001/presentation/page/calculator_page.dart';
import 'package:flutter_bloc_001/presentation/page/detail_page.dart';
import 'package:flutter_bloc_001/presentation/page/home_page.dart';
import 'package:go_router/go_router.dart';

part 'router.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
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
        BlocProvider<CalculatorBloc>(
          create: (BuildContext context) => CalculatorBloc(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: _router,
      ),
    );
  }
}
