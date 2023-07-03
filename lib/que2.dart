/*Create a Flutter application with three radiobuttons to show following options:
- Show Current Date and Time
- Show Current Location of the device
- Go to next screen.
After these three radiobuttons, a button (“Do as directed”) should be there. Clicking on the
button after selecting first or second option, the output should be displayed within the same
screen. Clicking on the button after selecting third option, another screen with should be
displayed.
--------------------------------------------------------------------------------------*/


import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';


void main() {
  runApp(MainApp());
}
class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question 2',
      home: MyApp(),

    );
  }
}

enum Character { one , two , three,zero}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Character? _character = Character.zero;
  String _title1 = "Date and Time";
  String _title2 = "Location";
  String _title3 = "Go to next";
  String t = "";
  String _text2 = "";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Radio Demo"),
      ),
      body:
      Container(child: Center(child:
      Column(children: [
        RadioListTile<Character>(
          title: Text(_title1),
          value: Character.one,
          groupValue: _character,
          onChanged: (Character? value) {
            setState(() {
              _character = value;
              _text2 = _title1;
            });
          },
        ),
        RadioListTile<Character>(
          title: Text(_title2),
          value: Character.two,
          groupValue: _character,
          onChanged: (Character? value) {
            setState(() {
              _character = value;
              _text2 = _title2;
            });
          },
        ),
        RadioListTile<Character>(
          title: Text(_title3),
          value: Character.three,
          groupValue: _character,
          onChanged: (Character? value) {
            setState(() {
              _character = value;
              _text2 = _title3;
            });
          },
        ),
        ElevatedButton(onPressed: () async{
          if(_text2 == _title1){
            setState(() {
              t = DateTime.now().toString();
            });

          }
          else if(_text2 == _title2){
            Position position = await Geolocator.getCurrentPosition(
                desiredAccuracy: LocationAccuracy.high);
            setState(() {
              t = "Latitude: ${position.latitude}, Longitude: ${position.longitude}";

            });

          }
          else if(_text2 == _title3){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen2()),
            );

          }
          else{
            setState(() {
              t = "Please select any one!!";
            });

          }
        }, child: const Text("Click me")),
        Text(t),
      ],
      ),
      )
      ),
    );
  }
}


class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question 2',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Screen2"),
        ),
        body: Text("Welcome"),
      ),

    );
  }
}




