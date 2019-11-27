import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品'),
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text('商品'),
      ),
    );
  }
}
