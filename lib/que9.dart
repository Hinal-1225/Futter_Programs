/*Create a flutter application with two textfields for taking username and password as input.
Also, provide two buttons: Login and Reset. Clicking on the Login button will check if both
username and password are equal to admin. If so, display “Login Successful” else display
“Login Failed” with the help of an alert dialog. Reset button should clear the contents from
the textfields.
 ------------------------------------------------------------------------------------------- */



import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}
class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: "Question 9"),
    );
  }
}

class MyHomePage extends StatefulWidget{
  var title;
  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();

}

class MyHomePageState extends State<MyHomePage>{
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login App'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _usernameController,
            decoration: InputDecoration(
              labelText: 'Username',
            ),
          ),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
            obscureText: true,
          ),
          ElevatedButton(
            onPressed: _login,
            child: Text('Login'),
          ),
          ElevatedButton(
            onPressed: _reset,
            child: Text('Reset'),
          ),
        ],
      ),
    );
  }


  void _login() {
    if (_usernameController.text == 'admin' &&
        _passwordController.text == 'admin') {
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text('Login Successful'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text('Login Failed'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  void _reset() {
    setState(() {
      _usernameController.clear();
      _passwordController.clear();
    });
  }


}