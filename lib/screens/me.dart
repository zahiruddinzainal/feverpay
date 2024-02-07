import 'package:flutter/material.dart';

class MePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Me Page'),
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Me Page Content'),
      ),
    );
  }
}
