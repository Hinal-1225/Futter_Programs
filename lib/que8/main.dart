/*Write a program to create a drawer with three options: Login, Greet and Close.
Create three dart files: Login.dart, Greet.dart
Tapping on Login should display screen for login from Login.dart
Tapping on Greet should display screen with “Have a good day” message from Greet.dart.
Tapping on Close should close the drawer.
----------------------------------------------------------------------*/
import 'package:flutter/material.dart';
import 'login.dart';
import 'greet.dart';

void main() {
  runApp(MainApp());
}
class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'program 8',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Program 8'),
        ),
        drawer: MainDrawer(),
        body: Center(
          child: Text('Hello Guys...'),
        ),
      ),
    );
  }
}

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text('Menu'),
          ),
          ListTile(
            title: Text('Login'),
            onTap: () {
              Navigator.pop(context); // Close drawer
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          ),
          ListTile(
            title: Text('Greet'),
            onTap: () {
              Navigator.pop(context); // Close drawer
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GreetScreen()));
            },
          ),
          ListTile(
            title: Text('Close'),
            onTap: () {
              Navigator.pop(context); // Close drawer
            },
          ),
        ],
      ),
    );
  }
}





