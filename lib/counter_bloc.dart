
import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent{}

class DecreamentCounterEvent extends CounterEvent{}
class IncrementCounterEvent extends CounterEvent{}



class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc(): super(0){
    on<DecreamentCounterEvent>((event, emit) => emit(state-1));
    on<IncrementCounterEvent>((event, emit) => emit(state+1));
  }

}

  // int value = 0;

  // // atur event
  // final StreamController<CounterEvent> eventController = StreamController<CounterEvent>();

  // // atur state
  // final StreamController<int> stateController = StreamController<int>();

  // // pintu masuknya (yang mengurusi masuk event ke controller)
  // StreamSink<CounterEvent> get eventSink => eventController.sink;

  // // bagian baca/proses controller (stream)
  // Stream<CounterEvent> get eventStream => eventController.stream;

  // // hasil proses state dari stream akan disimpan di sini
  // StreamSink<int> get stateSink => stateController.sink;

  // Stream<int> get stateStream => stateController.stream;

  // void mappingEventToState(CounterEvent event){
  //   if (event is IncrementCounterEvent) {
  //     value++;
  //   } else{
  //     value--;
  //   }

  //   stateSink.add(value);
  // }

  // CounterBloc(){
  //   eventStream.listen(mappingEventToState);
  // }