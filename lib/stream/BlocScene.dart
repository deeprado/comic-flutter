import 'package:flutter/material.dart';
import 'package:comic/stream/BlocProvider.dart';
import 'package:comic/stream/CounterWidget.dart';
import 'package:comic/stream/IncrementBloc.dart';

class BlocScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bloc"),
          elevation: 0,
        ),
        body: BlocProvider<IncrementBloc>(
          bloc: IncrementBloc(),
          child: CounterWidget(),
        ));
  }
}
