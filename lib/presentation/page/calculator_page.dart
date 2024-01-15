import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_001/presentation/bloc/calculator_bloc.dart';
import 'package:go_router/go_router.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter basic calculator',
      home: Scaffold(
        body: BlocConsumer<CalculatorBloc, CalculatorState>(
          builder: (BuildContext context, CalculatorState state) {
            return Center(
              child: Row(
                children: [
                  Flexible(
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
                  )),
                  Expanded(
                      flex: 5,
                      child: AspectRatio(
                        aspectRatio: 0.5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // Flexible(flex: 2, child: displayCal(state)),
                                // Flexible(
                                //     flex: 2,
                                //     child: Row(
                                //       children: [
                                //         Flexible(child: numberButton(state)),
                                //         Flexible(child: operatorButton(state)),
                                //       ],
                                //     )),

                              //   Stack(
                              //     children: <Widget>[
                              //       Container(
                              //         width: 100,
                              //         height: 100,
                              //         color: Colors.red,
                              //       ),
                              //       Container(
                              //         width: 90,
                              //         height: 90,
                              //         color: Colors.green,
                              //       ),
                              //       Container(
                              //         width: 80,
                              //         height: 80,
                              //         color: Colors.blue,
                              //       ),
                              //     ],
                              //   )
                              // ],
                            ),
                          ),
                        ),
                      )),
                  Flexible(
                    child: ElevatedButton(
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
                  ),
                ],
              ),
            );
          },
          listener: (BuildContext context, CalculatorState state) {},
        ),
      ),
    );
  }

  Widget displayCal(CalculatorState state) {
    return Container(
      decoration: const BoxDecoration(color: Colors.black),
      child: Text(state.props.toString()),
    );
  }

  Widget operatorButton(CalculatorState state) {
    return Column(children: [
      ElevatedButton(
        onPressed: () => (),
        child: Text('/'),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
        ),
      ),
      ElevatedButton(
        onPressed: () => (),
        child: Text('*'),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
        ),
      ),
      ElevatedButton(
        onPressed: () => (),
        child: const Text('-'),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
        ),
      ),
      ElevatedButton(
        onPressed: () => (),
        child: const Text('+'),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
        ),
      ),
    ]);
  }

  Widget numberButton(CalculatorState state) {
    return Column(
      children: [
        Row(
          children: [
            ElevatedButton(
              onPressed: () => (),
              child: Text('7'),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () => (),
              child: Text('8'),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () => (),
              child: const Text('9'),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
              ),
            ),
          ],
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () => (),
              child: Text('4'),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () => (),
              child: Text('5'),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () => (),
              child: Text('6'),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
              ),
            ),
          ],
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () => (),
              child: Text('1'),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () => (),
              child: Text('2'),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () => (),
              child: const Text('3'),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
              ),
            ),
          ],
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () => (),
              child: Text('C'),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () => (),
              child: Text('0'),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () => (),
              child: const Text('='),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
              ),
            ),
          ],
        )
      ],
    );
  }
}
