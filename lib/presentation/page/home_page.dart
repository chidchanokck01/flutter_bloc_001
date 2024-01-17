import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_001/presentation/bloc/homepage_bloc.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomepageBloc, HomepageState>(
      builder: (BuildContext context, HomepageState state) {
        return Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (state is DrawCircleState) ...[
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: state.colors, shape: BoxShape.circle),
                    )
                  ] else if (state is DrawSquareState) ...[
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: state.colors, shape: BoxShape.rectangle),
                    )
                  ],
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () =>
                          context.read<HomepageBloc>().add(DrawCircleEvent()),
                      child: const Text('Draw Circle'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () =>
                          context.read<HomepageBloc>().add(DrawSquareEvent()),
                      child: const Text('Draw Square'),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => context.goNamed('calculator'),
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: const BoxDecoration(color: Colors.black),
                      child: const Center(
                        child: Text(
                          'Next Page',
                          style: TextStyle(),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
      listener: (BuildContext context, HomepageState state) {
        // if (state is DrawCircleState) {
        //   context.read<HomepageBloc>().add(DrawCircleEvent());
        // } else {
        //   context.read<HomepageBloc>().add(DrawSquareEvent());
        // }
      },
    );
  }
}
