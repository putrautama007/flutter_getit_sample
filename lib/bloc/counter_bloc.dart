import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_state.dart';
import 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counter: 0));

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is Increment) {
      yield CounterState(counter: state.counter + 1);
    } else if (event is Decrement) {
      yield CounterState(counter: state.counter - 1);
    }
  }
}
