import 'package:flutter/material.dart';
import 'package:flutter_stream/counter/controller/counter_controller.dart';

class CounterPage extends StatelessWidget {

  final String title;

  const CounterPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterController = CounterController();

    return StreamBuilder<int>(
      stream: counterController.counterStream,
      builder: (context, snapshot) {

        int state = snapshot.data ?? 0;

        return Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$state',
                  style: Theme
                      .of(context)
                      .textTheme
                      .headlineMedium,
                ),
              ],
            ),
          ),
          floatingActionButton: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () => counterController.counterChangeWith(state + 1),
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () => counterController.counterChangeWith(state - 1),
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
            ],
          ), // This trailing comma makes auto-formatting nicer for build methods.
        );
      }
    );;
  }
}


//
// class CounterPage extends StatefulWidget {
//   const CounterPage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<CounterPage> createState() => _CounterPageState();
// }
//
// class _CounterPageState extends State<CounterPage> {
//   int _counter = 0;
//
//   void _changeCounter(int count) {
//     setState(() {
//       _counter = count;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: Column(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           FloatingActionButton(
//             onPressed: () => _changeCounter(_counter + 1),
//             tooltip: 'Increment',
//             child: const Icon(Icons.add),
//           ),
//           FloatingActionButton(
//             onPressed: () => _changeCounter(_counter - 1),
//             tooltip: 'Decrement',
//             child: const Icon(Icons.remove),
//           ),
//         ],
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
