/*Create a flutter application with two textfields for taking username and password as input.
Also, provide two buttons: Login and Reset. Clicking on the Login button will check if both
username and password are equal to admin. If so, display “Login Successful” else display
“Login Failed” with the help of an alert dialog. Reset button should clear the contents from
the textfields.
------------------------------------------------------------------------------------*/





import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}
class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: "Question 10"),
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
  double _sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Slider App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Slider Value: $_sliderValue',
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 16),
              Slider(
                value: _sliderValue,
                min: 1,
                max: 5,
                divisions: 4,
                onChanged: (value){
                  setState(() {
                    _sliderValue = value;
                    if (_sliderValue == 5) {
                      try{
                        throw OutOfRangeException();

                      }catch(err){
                        print(OutOfRangeException().errorMessage());
                      }
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OutOfRangeException implements Exception {
  String errorMessage() {
    return 'Slider value is out of range';
  }
}