import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_001/presentation/bloc/homepage_bloc.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => HomepageBloc(),
        child: BlocConsumer<HomepageBloc, HomepageState>(
            listener: (context, state) {
          // if (state is CounterAState) {
          //   Navigator.of(context)
          //       .push(MaterialPageRoute(builder: (BuildContext context) {
          //     return HomePage();
          //   }));
          // }
        }, builder: (context, state) {
          return Scaffold(
            body: Center(
              child: ElevatedButton(
                onPressed: () => (),
                child: const Text('Go to Home Page'),
              ),
            ),
          );
        }));

    // return Scaffold(
    //   body: Center(
    //     child: ElevatedButton(
    //       onPressed: () => context.read<NavigationCubit>().goToHome(),
    //       child: const Text('Go to Home Page'),
    //     ),
    //   ),
    // );
  }
}
