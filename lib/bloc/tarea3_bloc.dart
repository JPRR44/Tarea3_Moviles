import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'tarea3_event.dart';
part 'tarea3_state.dart';

class Tarea3Bloc extends Bloc<Tarea3Event, Tarea3State> {
  Tarea3Bloc() : super(Tarea3Initial());
  List<String> list1 = ['Perro', 'Gato'];
  List<String> list2 = ['Perro', 'Gato'];
  int count = 0;
  int index = 0;
  int listSize;

  @override
  Stream<Tarea3State> mapEventToState(
    Tarea3Event event,
  ) async* {
    if (event is StartEvent) {
      listSize = list1.length;
      count = 0;
      index = 0;
      yield JuegoIniciadoState(
          palabra: list1[index], titulo: 'The word is ...', contador: count);
    } else if (event is SkipEvent) {
      index++;
      if (index < listSize)
        yield JuegoIniciadoState(
            palabra: list1[index], titulo: 'The word is ...', contador: count);
    } else if (event is GotEvent) {
      if (list1[index] == list2[index]) count++;
      index++;
      if (index < listSize)
        yield JuegoIniciadoState(
            palabra: list1[index], titulo: 'The word is ...', contador: count);
      else
        yield JuegoEndState(titulo: 'You scored!', contador: count);
    } else if (event is EndEvent) {
      yield JuegoEndState(titulo: 'You scored!', contador: count);
    }
  }
}
