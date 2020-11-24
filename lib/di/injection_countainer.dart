import 'package:flutter_get_it_sample/bloc/counter_bloc.dart';
import 'package:get_it/get_it.dart';

final inject = GetIt.instance;

Future<void> init() async {
  // Bloc
  inject.registerFactory(
        () => CounterBloc(),
  );
}