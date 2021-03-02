part of 'tarea3_bloc.dart';

@immutable
abstract class Tarea3State extends Equatable {}

class Tarea3Initial extends Tarea3State {
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class StartState extends Tarea3State {
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class JuegoIniciadoState extends Tarea3State {
  final String palabra;
  final String titulo;
  final int contador;

  JuegoIniciadoState(
      {@required this.palabra, @required this.titulo, @required this.contador});

  @override
  // TODO: implement props
  List<Object> get props => [palabra, titulo, contador];
}

class JuegoNextState extends Tarea3State {
  final String palabra;
  final String titulo;
  final int contador;

  JuegoNextState(
      {@required this.palabra, @required this.titulo, @required this.contador});

  @override
  // TODO: implement props
  List<Object> get props => [palabra, titulo, contador];
}

class JuegoEndState extends Tarea3State {
  final String titulo;
  final int contador;

  JuegoEndState({@required this.titulo, @required this.contador});

  @override
  // TODO: implement props
  List<Object> get props => [titulo, contador];
}
