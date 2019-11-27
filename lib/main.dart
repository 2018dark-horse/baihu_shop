import 'package:baihu_shop/bloc/bloc_provider.dart';
import 'package:baihu_shop/views/main/bloc/main_bloc.dart';
import 'package:baihu_shop/views/main/pages/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        bloc: MainPageBloc(),
        child: MainPage(),
      ),
    );
  }
}
