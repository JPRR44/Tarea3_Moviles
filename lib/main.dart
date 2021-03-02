import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tarea3/bloc/tarea3_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guess the Word ',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Guess the Word!'),
          ),
          body: BlocProvider(
            create: (context) => Tarea3Bloc(),
            child: BlocConsumer<Tarea3Bloc, Tarea3State>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                //Checar los estados a mostrar
                if (state is JuegoIniciadoState) {
                  return Container(
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  Text(state.titulo),
                                  SizedBox(height: 40),
                                  Text(
                                    state.palabra,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Text(state.contador.toString()),
                                  Row(
                                    children: [
                                      MaterialButton(
                                        onPressed: () {
                                          BlocProvider.of<Tarea3Bloc>(context)
                                              .add(SkipEvent());
                                        },
                                        child: Text('SKIP'),
                                        color: Colors.green[500],
                                      ),
                                      MaterialButton(
                                        onPressed: () {
                                          BlocProvider.of<Tarea3Bloc>(context)
                                              .add(GotEvent());
                                        },
                                        child: Text('GOT IT'),
                                        color: Colors.green[500],
                                      ),
                                      MaterialButton(
                                        onPressed: () {
                                          BlocProvider.of<Tarea3Bloc>(context)
                                              .add(EndEvent());
                                        },
                                        child: Text('END GAME'),
                                        color: Colors.green[500],
                                      ),
                                    ],
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  );
                } else if (state is JuegoEndState) {
                  return Container(
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  Text(state.titulo),
                                  SizedBox(height: 40),
                                  Text(
                                    state.contador.toString(),
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              )),
                          Expanded(
                            flex: 1,
                            child: MaterialButton(
                              onPressed: () {
                                BlocProvider.of<Tarea3Bloc>(context)
                                    .add(StartEvent());
                              },
                              child: Text('PLAY AGAIN'),
                              color: Colors.green[500],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                } else
                  return Container(
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  Text('Get ready to'),
                                  SizedBox(height: 40),
                                  Text(
                                    'Guess the word!',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              )),
                          Expanded(
                            flex: 1,
                            child: MaterialButton(
                              onPressed: () {
                                BlocProvider.of<Tarea3Bloc>(context)
                                    .add(StartEvent());
                              },
                              child: Text('PLAY'),
                              color: Colors.green[500],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
              },
            ),
          )),
    );
  }
}
