import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/bottom_widget.dart';
import 'package:flutter_bloc_example/counter_bloc.dart';
import 'package:flutter_bloc_example/value_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ValueWidget(),
          SizedBox(height: 16),
          BottomWidget()
          // StreamBuilder<int>(
          //     stream: counterBloc.stateStream,
          //     initialData: 0,
          //     builder: (context, snapshot) {
          //       return Text(snapshot.data.toString(),
          //           style: const TextStyle(fontSize: 30));
          //     }),
          // const SizedBox(
          //   height: 16,
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     ElevatedButton(
          //         onPressed: () {
          //           counterBloc.eventSink.add(DecreamentCounterEvent());
          //         },
          //         child: const Text(
          //           '-',
          //           style: TextStyle(fontSize: 30),
          //         )),
          //     const SizedBox(
          //       width: 10,
          //     ),
          //     ElevatedButton(
          //         onPressed: () {
          //           counterBloc.eventSink.add(IncrementCounterEvent());
          //         },
          //         child: const Text('+', style: TextStyle(fontSize: 30))),
          //   ],
          // )
        ],
      ),
    );
  }
}
