// 通用 BLoC provider
import 'package:flutter/material.dart';
import 'package:comic/stream/BlocBase.dart';

class BlocProvider<T extends BlocBase> extends StatefulWidget {
  BlocProvider({
    Key key,
    @required this.child,
    @required this.bloc,
  }): super(key: key);

  final T bloc;
  final Widget child;

  @override
  _BlocProviderState<T> createState() => _BlocProviderState<T>();

  static T of<T extends BlocBase>(BuildContext context){
    // final type = _typeOf<BlocProvider<T>>();
    BlocProvider<T> provider = context.findAncestorWidgetOfExactType();
    return provider.bloc;
  }

  // static Type _typeOf<T>() => T;
}

class _BlocProviderState<T> extends State<BlocProvider<BlocBase>>{
  @override
  void dispose(){
    widget.bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return widget.child;
  }
}