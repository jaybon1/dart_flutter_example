import 'package:flutter/material.dart';
import 'package:flutter_getx_update/counter/controller/counter_getx.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  final String title;

  const CounterPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

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
            GetBuilder<CounterGetx>(
              builder: (counterGetx) => Text(
                '${counterGetx.count}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => CounterGetx.to.changeTo(CounterGetx.to.count + 1),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () => CounterGetx.to.changeTo(CounterGetx.to.count - 1),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
    ;
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
