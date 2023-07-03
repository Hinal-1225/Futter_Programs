/*Create a Flutter application with two Tabs: The first Tab should display a group of four
checkboxes and a button. Clicking on the button should display all the selected checkboxes
in a snackbar. The second Tab should display a group of three radiobuttons and a button.
Clicking on the button should display the selected value in a snackbar


--------------------------------------------------------------------------------------------*/

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}
class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question 1',
      home: MyApp(),
    );
  }
}

enum Character { hinal , ishita , rupa , zero}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  String _title1 = "hinal";
  String _title2 = "ishita";
  String _title3 = "rupa";
  String _text = "";
  String _text2 = "";
  Character? _character = Character.zero;
  var tmap = Map<String, String>();


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs:[
                Tab(child: Text("Tab 1")),
                Tab(child: Text("Tab 2")),
              ],
            ),
            title: const Text("Button Demo"),
          ),
          body:  TabBarView(
            children: [
              Container(child: Center(child:
              Column(children: [
                CheckboxListTile(
                  title: Text(_title1),
                  checkColor: Colors.white,
                  value: _isChecked1,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked1 = value!;
                      if(_isChecked1 == true){

                        tmap["1"] = "hinal";

                        print(tmap);
                      }
                      else{
                        tmap["1"] = "";
                      }
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text(_title2),
                  checkColor: Colors.white,
                  value: _isChecked2,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked2 = value!;
                      if(_isChecked2 == true){

                        tmap["2"] = "ishita";
                        print(tmap);
                      }
                      else{
                        tmap["2"] = "";
                      }
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text(_title3),
                  checkColor: Colors.white,
                  value: _isChecked3,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked3 = value!;
                      if(_isChecked3 == true){

                        tmap["3"] = "rupa";
                        print(tmap);
                      }
                      else{
                        tmap["3"] = "";
                      }
                    });
                  },
                ),
                ElevatedButton(onPressed: () {
                  if(tmap["1"] == null){
                    tmap["1"] = "";
                  }
                  if(tmap["2"] == null){
                    tmap["2"] = "";
                  }
                  if(tmap["3"] == null){
                    tmap["3"] = "";
                  }
                  _text = tmap["1"]! + " " + tmap["2"]! + " " + tmap["3"]!;
                  ScaffoldMessenger.of(context).showSnackBar( // is this context <<<
                      SnackBar(content: Text(_text)));
                }, child: Text("Show Snakbar")),
              ]
              )
              )
              ),
              Container(child: Center(child:
              Column(children: [
                RadioListTile<Character>(
                  title: Text(_title1),
                  value: Character.hinal,
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
                  value: Character.ishita,
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
                  value: Character.rupa,
                  groupValue: _character,
                  onChanged: (Character? value) {
                    setState(() {
                      _character = value;
                      _text2 = _title3;
                    });
                  },
                ),
                ElevatedButton(onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar( // is this context <<<
                      SnackBar(content: Text(_text2)));
                }, child: const Text("Show Snakbar")),
              ])
              ),
              )],
          ),
        )
    );
  }
}





