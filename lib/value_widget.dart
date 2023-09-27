import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/counter_bloc.dart';

class ValueWidget extends StatelessWidget {
  ValueWidget({super.key});

  final counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, int>(builder: (context, state){
      return Text(state.toString(),
        style: const TextStyle(fontSize: 30));
    }); 
    // StreamBuilder(
    //   stream: counterBloc.stateStream,
    //   initialData: 0,
    //   builder: (context, snapshot){
    //     return Text(snapshot.data.toString(),
    //     style: const TextStyle(fontSize: 30));
    //   }
    //   );
  }
}