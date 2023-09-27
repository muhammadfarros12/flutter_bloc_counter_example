import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/counter_bloc.dart';

class BottomWidget extends StatelessWidget {
  BottomWidget({super.key});

final counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center ,
      children: [
        ElevatedButton(onPressed: (){
          context.read<CounterBloc>().add(DecreamentCounterEvent());
          // counterBloc.eventSink.add(DecreamentCounterEvent());
        }, child: const Text('-', style: TextStyle(fontSize: 30),)),
        const SizedBox(width: 10,),
        ElevatedButton(onPressed: (){
          context.read<CounterBloc>().add(IncrementCounterEvent());
          // counterBloc.eventSink.add(IncrementCounterEvent());
        }, child: const Text('+', style: TextStyle(fontSize: 30))),
      ],
    );
  }
}