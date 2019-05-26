import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/counter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);

    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              counterBloc.increment();
            },
          ),
          SizedBox(height: 8.0),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              counterBloc.decrement();
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          counterBloc.counter.toString(),
          style: TextStyle(
            fontSize: 40.0,
          ),
        ),
      ),
    );
  }
}
