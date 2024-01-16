import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_001/presentation/bloc/calculator_bloc.dart';
import 'package:go_router/go_router.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CalculatorBloc, CalculatorState>(
      builder: (BuildContext context, CalculatorState state) {
        return Center(
          child: Row(
            children: [
              ElevatedButton(
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
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: 100,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10))),
                        child: Text(
                          state.calculationModel.toString(),
                          style: const TextStyle(color: Colors.amber),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.height * 0.45,
                        decoration: const BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                      height: 70,
                                      child: ElevatedButton(
                                        onPressed: () => context
                                            .read<CalculatorBloc>()
                                            .add(
                                                const NumberPressed(number: 7)),
                                        style: ElevatedButton.styleFrom(
                                          shape: const CircleBorder(),
                                        ),
                                        child: const Text('7'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                      height: 70,
                                      child: ElevatedButton(
                                        onPressed: () => context
                                            .read<CalculatorBloc>()
                                            .add(
                                                const NumberPressed(number: 4)),
                                        style: ElevatedButton.styleFrom(
                                          shape: const CircleBorder(),
                                        ),
                                        child: const Text('4'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                      height: 70,
                                      child: ElevatedButton(
                                        onPressed: () => context
                                            .read<CalculatorBloc>()
                                            .add(
                                                const NumberPressed(number: 1)),
                                        style: ElevatedButton.styleFrom(
                                          shape: const CircleBorder(),
                                        ),
                                        child: const Text('1'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                      height: 70,
                                      child: ElevatedButton(
                                        onPressed: () => context
                                            .read<CalculatorBloc>()
                                            .add(CalculateClear()),
                                        style: ElevatedButton.styleFrom(
                                            shape: const CircleBorder(),
                                            backgroundColor: Colors.amber),
                                        child: const Text('c'),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                      height: 70,
                                      child: ElevatedButton(
                                        onPressed: () => context
                                            .read<CalculatorBloc>()
                                            .add(
                                                const NumberPressed(number: 8)),
                                        style: ElevatedButton.styleFrom(
                                          shape: const CircleBorder(),
                                        ),
                                        child: const Text('8'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                      height: 70,
                                      child: ElevatedButton(
                                        onPressed: () => context
                                            .read<CalculatorBloc>()
                                            .add(
                                                const NumberPressed(number: 5)),
                                        style: ElevatedButton.styleFrom(
                                          shape: const CircleBorder(),
                                        ),
                                        child: const Text('5'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                      height: 70,
                                      child: ElevatedButton(
                                        onPressed: () => context
                                            .read<CalculatorBloc>()
                                            .add(
                                                const NumberPressed(number: 2)),
                                        style: ElevatedButton.styleFrom(
                                          shape: const CircleBorder(),
                                        ),
                                        child: const Text('2'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                      height: 70,
                                      child: ElevatedButton(
                                        onPressed: () => context
                                            .read<CalculatorBloc>()
                                            .add(
                                                const NumberPressed(number: 0)),
                                        style: ElevatedButton.styleFrom(
                                          shape: const CircleBorder(),
                                        ),
                                        child: const Text('0'),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                      height: 70,
                                      child: ElevatedButton(
                                        onPressed: () => context
                                            .read<CalculatorBloc>()
                                            .add(
                                                const NumberPressed(number: 9)),
                                        style: ElevatedButton.styleFrom(
                                          shape: const CircleBorder(),
                                        ),
                                        child: const Text('9'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                      height: 70,
                                      child: ElevatedButton(
                                        onPressed: () => context
                                            .read<CalculatorBloc>()
                                            .add(
                                                const NumberPressed(number: 6)),
                                        style: ElevatedButton.styleFrom(
                                          shape: const CircleBorder(),
                                        ),
                                        child: const Text('6'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                      height: 70,
                                      child: ElevatedButton(
                                        onPressed: () => context
                                            .read<CalculatorBloc>()
                                            .add(
                                                const NumberPressed(number: 3)),
                                        style: ElevatedButton.styleFrom(
                                          shape: const CircleBorder(),
                                        ),
                                        child: const Text('3'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                      height: 70,
                                      child: ElevatedButton(
                                        onPressed: () => context
                                            .read<CalculatorBloc>()
                                            .add(CalculateResult()),
                                        style: ElevatedButton.styleFrom(
                                            shape: const CircleBorder(),
                                            backgroundColor: Colors.amber),
                                        child: const Text('='),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.05,
                                    height: 70,
                                    child: ElevatedButton(
                                      onPressed: () => context
                                          .read<CalculatorBloc>()
                                          .add(const OperatorPressed(
                                              operator: '/')),
                                      style: ElevatedButton.styleFrom(
                                          shape: const CircleBorder(),
                                          backgroundColor: Colors.amber),
                                      child: const Text('/'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.05,
                                    height: 70,
                                    child: ElevatedButton(
                                      onPressed: () => context
                                          .read<CalculatorBloc>()
                                          .add(const OperatorPressed(
                                              operator: '*')),
                                      style: ElevatedButton.styleFrom(
                                          shape: const CircleBorder(),
                                          backgroundColor: Colors.amber),
                                      child: const Text('*'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.05,
                                    height: 70,
                                    child: ElevatedButton(
                                      onPressed: () => context
                                          .read<CalculatorBloc>()
                                          .add(const OperatorPressed(
                                              operator: '-')),
                                      style: ElevatedButton.styleFrom(
                                          shape: const CircleBorder(),
                                          backgroundColor: Colors.amber),
                                      child: const Text('-'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.05,
                                    height: 70,
                                    child: ElevatedButton(
                                      onPressed: () => context
                                          .read<CalculatorBloc>()
                                          .add(const OperatorPressed(
                                              operator: '+')),
                                      style: ElevatedButton.styleFrom(
                                          shape: const CircleBorder(),
                                          backgroundColor: Colors.amber),
                                      child: const Text('+'),
                                    ),
                                  ),
                                ])
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => context.go('/calculator/calculator2'),
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
          ),
        );
      },
      listener: (BuildContext context, CalculatorState state) {
        if (state is CalculationInitial) {}
      },
    );
  }
}
