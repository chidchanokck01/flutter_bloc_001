import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_001/presentation/bloc/homepage_bloc.dart';
import 'package:go_router/go_router.dart';

class Calculator2Page extends StatelessWidget {
  const Calculator2Page({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => HomepageBloc(),
        child: BlocConsumer<HomepageBloc, HomepageState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(state.count.toString()),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () => context
                                    .read<HomepageBloc>()
                                    .add(CounterEventReset()),
                                child: const Icon(Icons.restore_sharp),
                              ),
                              ElevatedButton(
                                onPressed: () => context
                                    .read<HomepageBloc>()
                                    .add(CounterEventAdd()),
                                child: const Icon(Icons.add),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () => context.goNamed('main'),
                    child: const Text('Go to Home Page'),
                  ),
                ],
              );
            }));
  }
}
