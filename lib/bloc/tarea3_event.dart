part of 'tarea3_bloc.dart';

@immutable
abstract class Tarea3Event extends Equatable {}

class StartEvent extends Tarea3Event {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class SkipEvent extends Tarea3Event {
  final bool result = false;
  @override
  // TODO: implement props
  List<Object> get props => [result];
}

class GotEvent extends Tarea3Event {
  final bool result = true;
  @override
  // TODO: implement props
  List<Object> get props => [result];
}

class EndEvent extends Tarea3Event {
  @override
  // TODO: implement props
  List<Object> get props => [];
}
