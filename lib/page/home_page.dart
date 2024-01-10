import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_001/cubit/navigation_cubit.dart';
import 'package:flutter_bloc_001/homepage/bloc/homepage_bloc.dart';
import 'package:flutter_bloc_001/page/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => NavigationCubit(),
        child: BlocConsumer<NavigationCubit, NavigationState>(
            listener: (context, state) {
          if (state is DetailPageState) {
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (BuildContext context) {
            //   return const DetailPage();
            // }));
            print('state.colorBg');
            print(state.colorBg);
          }
        }, builder: (context, state) {
          // return Scaffold(
          //   body: Center(
          //     child: ElevatedButton(
          //       onPressed: () => context.read<NavigationCubit>().goToDetail(),
          //       child: const Text('Go to Detail Page22'),
          //     ),
          //   ),
          // );
          return Container(
            color: Colors.black,
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.amberAccent,
                  child: ElevatedButton(
                    onPressed: () =>
                        context.read<NavigationCubit>().goToDetail(),
                    child: const Text('Go to Detail Page22'),
                  ),
                )),
                Expanded(
                    child: Container(
                  color: state.colorBg,
                  // child: ,
                ))
              ],
            ),
          );
        }));

    // return Scaffold(
    //   body: Center(
    //     child: ElevatedButton(
    //       onPressed: () => context.read<NavigationCubit>().goToDetail(),
    //       child: const Text('Go to Detail Page2'),
    //     ),
    //   ),
    // );
  }
}
