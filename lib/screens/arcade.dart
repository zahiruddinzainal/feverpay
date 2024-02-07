import 'package:flutter/material.dart';

class ArcadePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arcade Page'),
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Arcade Page Content'),
      ),
    );
  }
}
