import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_001/presentation/bloc/calculator_bloc.dart';
import 'package:go_router/go_router.dart';

class Calculator2Page extends StatelessWidget {
  const Calculator2Page({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter basic calculator2',
      home: Scaffold(
        body: BlocProvider(
          create: (context) {
            return CalculatorBloc();
          },
          child: Center(
            child: ElevatedButton(
              onPressed: () => context.pop(),
              child: Container(
                width: 100,
                height: 50,
                decoration: const BoxDecoration(color: Colors.black),
                child: const Center(
                  child: Text(
                    'Back Page',
                    style: TextStyle(),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
