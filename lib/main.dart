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
            title: Text(''),
          ),
          body: BlocProvider(
            create: (context) => Tarea3Bloc(),
            child: BlocConsumer<Tarea3Bloc, Tarea3State>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                return Container(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text('Get ready to'),
                        Text('Guess the word!'),
                        MaterialButton(
                          onPressed: () {},
                          child: Text('PLAY'),
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
