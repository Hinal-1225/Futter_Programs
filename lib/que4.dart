/*Create a Flutter application which displays one textfield for taking firstname as input, one
date-picker and one button(“Go to next screen”) on first screen. The date-picker must not
allow the user to select date earlier than the current date and later than 31/12/2023. Clicking
on the button should display the next screen with firstname and selected date in the center
of the screen.
-------------------------------------------------------------------------------------*/


import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}
class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: "Date Picker"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  var title;
  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();


}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _nameController = TextEditingController();
  String _selectedDate = "";
  String _selectedName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Picker"),
      ),
      body: Column(children: [
        TextField(
          decoration: InputDecoration(
            label: Text("Enter Name"),
          ),
          controller: _nameController,
        ),
        ElevatedButton(onPressed: () async {
          DateTime? pickerDate = await showDatePicker(context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(2025));
          _selectedDate = pickerDate.toString();
        }, child: Text("Calender")),
        ElevatedButton(onPressed: () {
          _selectedName = _nameController.text;
          print(_selectedName);
          print(_selectedDate);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Screen2(userdate: _selectedDate, username: _selectedName,)),
          );
        },
            child: Text("Go to next page")
        )
      ],),
    );
  }

}


class Screen2 extends StatelessWidget {

  final String userdate;
  final String username;


  const Screen2({super.key, required this.userdate,required this.username});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Details"),
      ),
      body: Center(
          child: Column(children: [
            Text("$userdate"),
            Text("$username"),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back'),
            ),

          ]
          )
      ),
    );
  }
}