/*Write a program to create an app with four screens. Each screen must have three buttons
to re-direct to one of the three other screens. Use named routes.
-----------------------------------------------------------------------------------------*/



import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}
class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Question 7",
      initialRoute: '/',
      routes: {
        '/': (context) => Screen1(),
        '/screenTwo': (context) => Screen2(),
        '/screenThree': (context) => Screen3(),
        '/screenFour': (context) => Screen4(),
      },
    );
  }
}

class Screen1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question 7 "),
      ),
      body: Column(
        children: [
          Text('Welcome to Screen One'),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('Go to Screen Two'),
            onPressed: () {
              Navigator.pushNamed(context, '/screenTwo');
            },
          ),
          ElevatedButton(
            child: Text('Go to Screen Three'),
            onPressed: () {
              Navigator.pushNamed(context, '/screenThree');
            },
          ),
          ElevatedButton(
            child: Text('Go to Screen Four'),
            onPressed: () {
              Navigator.pushNamed(context, '/screenFour');
            },
          ),
        ],
      ),
    );
  }

}


class Screen2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question 7 "),
      ),
      body: Column(
        children: [
          Text('Welcome to Screen Two'),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('Go to Screen One'),
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ElevatedButton(
            child: Text('Go to Screen Three'),
            onPressed: () {
              Navigator.pushNamed(context, '/screenThree');
            },
          ),
          ElevatedButton(
            child: Text('Go to Screen Four'),
            onPressed: () {
              Navigator.pushNamed(context, '/screenFour');
            },
          ),
        ],
      ),
    );
  }

}


class Screen3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question 7 "),
      ),
      body: Column(
        children: [
          Text('Welcome to Screen Three'),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('Go to Screen One'),
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ElevatedButton(
            child: Text('Go to Screen Two'),
            onPressed: () {
              Navigator.pushNamed(context, '/screenTwo');
            },
          ),
          ElevatedButton(
            child: Text('Go to Screen Four'),
            onPressed: () {
              Navigator.pushNamed(context, '/screenFour');
            },
          ),
        ],
      ),
    );
  }

}

class Screen4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question 7 "),
      ),
      body: Column(
        children: [
          Text('Welcome to Screen Four'),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('Go to Screen One'),
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ElevatedButton(
            child: Text('Go to Screen Two'),
            onPressed: () {
              Navigator.pushNamed(context, '/screenTwo');
            },
          ),
          ElevatedButton(
            child: Text('Go to Screen Three'),
            onPressed: () {
              Navigator.pushNamed(context, '/screenThree');
            },
          ),
        ],
      ),
    );
  }

}
