import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:obsnews/counter_de.dart';
// import 'package:obsnews/counter_event.dart';
// import 'package:obsnews/counter_in.dart';

abstract class CounterEvent {}

class CounterIncrementPressed extends CounterEvent {}

class CounterDecrementPressed extends CounterEvent {}

class TapGuys extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  /// {@macro counter_bloc}
  CounterBloc() : super(0) {
    on<CounterIncrementPressed>((event, emit) => emit(state + 1));
    on<CounterDecrementPressed>((event, emit) => emit(state - 1));
    on<TapGuys>((event, emit) => emit(state + 5));
  }
}
