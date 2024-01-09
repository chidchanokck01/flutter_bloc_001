import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_001/cubit/navigation_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => NavigationCubit(),
        child: BlocConsumer<NavigationCubit, NavigationState>(
            listener: (context, state) {},
            builder: (context, state) {
              var cubit = NavigationCubit().goToDetail();
              return Scaffold(
                body: Center(
                  child: ElevatedButton(
                    onPressed: () =>
                        context.read<NavigationCubit>().goToDetail(),
                    child: const Text('Go to Detail Page2'),
                  ),
                ),
              );
            }));
  }
}
