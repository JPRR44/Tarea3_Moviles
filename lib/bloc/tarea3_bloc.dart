import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'tarea3_event.dart';
part 'tarea3_state.dart';

class Tarea3Bloc extends Bloc<Tarea3Event, Tarea3State> {
  Tarea3Bloc() : super(Tarea3Initial());

  @override
  Stream<Tarea3State> mapEventToState(
    Tarea3Event event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
