/*Create a flutter application in which the at least five records are fetched from an online
resource with the help of http. Display these records using a ListView.
---------------------------------------------------------------------------------------------*/


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MainApp());
}
class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: "Question 6"),
    );
  }
}

class MyHomePage extends StatefulWidget{
  var title;
  MyHomePage({Key? key, required this.title}) : super(key: key);
  @override
  MyHomePageState createState() => MyHomePageState();

}

class MyHomePageState extends State<MyHomePage> {

  Uri url = Uri.parse("https://randomuser.me/api/?results=5");
  late List data;
  bool _isDataLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Http Request'),
        ),
        body: _isDataLoading ? Center(
            child: CircularProgressIndicator()
        )
            : ListView.builder(
            itemCount: data == null ? 0 : data.length,
            itemBuilder: (BuildContext context, index){
              return ListTile(
                title: Text(data[index]['name']['first']+" "+data[index]['name']['last']),
                subtitle: Text(data[index]['email']),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(data[index]['picture']['thumbnail']),
                ),
              );
            }
        )
    );
  }

  Future<List> _getUsers() async
  {
    var response = await http.get(url,headers: {"Accept": "application/json"});
    setState(() {

      var listData = json.decode(response.body);
      data = listData['results'];

      _isDataLoading = false;
    });
    return data;
  }

  @override
  void initState() {
    super.initState();
    _getUsers();

  }
}
