import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('个人中心'),
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text('个人中心'),
      ),
    );
  }
}
