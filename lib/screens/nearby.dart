import 'package:flutter/material.dart';

class NearbyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nearby Page'),
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Nearby Page Content'),
      ),
    );
  }
}
