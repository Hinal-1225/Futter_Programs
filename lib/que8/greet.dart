import 'package:flutter/material.dart';

class GreetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greet'),
      ),
      body: Center(
        child: Text('Have a good day'),
      ),
    );
  }
}
