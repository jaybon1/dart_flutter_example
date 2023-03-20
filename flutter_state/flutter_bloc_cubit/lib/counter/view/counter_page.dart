import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubit/counter/controller/counter_cubit.dart';

class CounterPage extends StatelessWidget {
  final String title;

  const CounterPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final counterCubit = context.read<CounterCubit>();
    // read를 사용하면 화면은 변경하기 위해 BlocBuilder를 사용해야한다.
    // watch는 바로 사용할 수 있다.
    // read는 counter를 안 보는 페이지에서 사용하면 된다.
    final counterCubit = context.watch<CounterCubit>();

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
              '${counterCubit.state}',
              style: Theme.of(context).textTheme.headlineMedium,
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => counterCubit.changeTo(counterCubit.state + 1),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () => counterCubit.changeTo(counterCubit.state - 1),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
