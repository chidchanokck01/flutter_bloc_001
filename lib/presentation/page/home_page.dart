import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_001/presentation/bloc/homepage_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // BlocProvider(
        //     create: (context) => HomepageBloc(),
        //     child:
        BlocConsumer<HomepageBloc, HomepageState>(
      builder: (BuildContext context, HomepageState state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                  onPressed: () =>
                      context.read<HomepageBloc>().add(DrawCircleEvent()),
                  child: const Text('Draw Circle'),
                )),
                Expanded(
                    child: ElevatedButton(
                  onPressed: () =>
                      context.read<HomepageBloc>().add(DrawSquareEvent()),
                  child: const Text('DrawSquareEvent'),
                ))
              ],
            ),
            Row(
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
          ],
        );
      },
      listener: (BuildContext context, HomepageState state) {
        if (state is DrawCircleState) {
          context.read<HomepageBloc>().add(DrawCircleEvent());
        } else {
          context.read<HomepageBloc>().add(DrawSquareEvent());
        }
      },
      // )
    );
  }
}

// @override
// Widget build(BuildContext context) {
//   return BlocProvider(
//       create: (context) => HomepageBloc(),
//       child: BlocConsumer<HomepageBloc, HomepageState>(
//         listener: (context, state) {
//           print(state);
//           if (state is DrawCircleState) {
//             // Navigator.of(context)
//             //     .push(MaterialPageRoute(builder: (BuildContext context) {
//             //   return const DetailPage();
//             // }))
//             Container(
//               color: Colors.black,
//               child: Row(
//                 children: [
//                   Expanded(
//                       child: Container(
//                     color: Colors.amberAccent,
//                     child: ElevatedButton(
//                       onPressed: () =>
//                           context.read<HomepageBloc>().add(DrawCircleEvent()),
//                       child: const Text('Go to Detail Page22'),
//                     ),
//                   )),
//                   Expanded(
//                       child: Container(
//                     color: state.color,
//                   ))
//                 ],
//               ),
//             );
//           }
//         },
//         builder: (BuildContext context, HomepageState state) {
//           return Container();
//         },
//         //  builder: (context, state) {
//         //   return Container(
//         //     color: Colors.black,
//         //     child: Row(
//         //       children: [
//         //         Expanded(
//         //             child: Container(
//         //           color: Colors.amberAccent,
//         //           child: ElevatedButton(
//         //             onPressed: () =>
//         //                 context.read<HomepageBloc>().add(DrawCircleEvent()),
//         //             child: const Text('Go to Detail Page22'),
//         //           ),
//         //         )),
//         //         Expanded(
//         //             child: Container(
//         //           color: state.color,
//         //         ))
//         //       ],
//         //     ),
//         //   );
//         // }
//       ));
// }
