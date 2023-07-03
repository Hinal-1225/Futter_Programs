/*Create a Flutter application in which three scrollbars are displayed. These scrollbars should
allow the user to select value for length, breadth and height of a box. Each scrollbar should
allow a value between 1 and 5 only. Further, provide one more button(“Show”). Clicking this
button should display volume of the box for current value of length, breadth and height.
-----------------------------------------------------------------------------*/


import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}
class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHomePage(title: "Question 5"),
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
  double _length = 1.0;
  double _breadth = 1.0;
  double _height = 1.0;
  double _volumn = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scrollbar"),
      ),
      body: Column(children: [
        SizedBox(height: 10.0),
        Text(
          'Select Length',
          style: TextStyle(fontSize: 20.0),
        ),
        SizedBox(height: 10.0),
        Scrollbar(
          child: Slider(
            value: _length,
            min: 1.0,
            max: 5.0,
            divisions: 8,
            label: '$_length',
            onChanged: (value) {
              setState(() {
                _length = value;
              });
            },
          ),
        ),
        SizedBox(height: 20.0),
        Text('Select Breadth',
          style: TextStyle(fontSize: 20.0),
        ),
        SizedBox(height: 10.0),
        Scrollbar(
          child: Slider(
            value: _breadth,
            min: 1.0,
            max: 5.0,
            divisions: 8,
            label: '$_breadth',
            onChanged: (value) {
              setState(() {
                _breadth = value;
              });
            },
          ),
        ),
        SizedBox(height: 20.0),
        Text(
          'Select Height',
          style: TextStyle(fontSize: 20.0),
        ),
        SizedBox(height: 10.0),
        Scrollbar(
          child: Slider(
            value: _height,
            min: 1.0,
            max: 5.0,
            divisions: 8,
            label: '$_height',
            onChanged: (value) {
              setState(() {
                _height = value;
              });
            },
          ),
        ),
        SizedBox(height: 10.0),
        ElevatedButton(
            onPressed: (){
              setState(() {
                _volumn = _length * _breadth * _height;
              });
            },
            child: Text("Calulate Volumn")),
        SizedBox(height: 10.0),
        Text("Volumn : $_volumn"),

      ],),
    );
  }

}