import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_001/cubit/navigation_cubit.dart';
import 'package:flutter_bloc_001/detailpage/bloc/detailpage_bloc.dart';
import 'package:flutter_bloc_001/page/home_page.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => NavigationCubit(),
        child: BlocConsumer<NavigationCubit, NavigationState>(
            listener: (context, state) {
          if (state is DetailpageLoaded) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return const HomePage();
            }));
          }
        }, builder: (context, state) {
          return Scaffold(
            body: Center(
              child: ElevatedButton(
                onPressed: () => context.read<NavigationCubit>().goToHome(),
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
