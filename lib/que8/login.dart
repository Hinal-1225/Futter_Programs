import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name')
            ),

            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                print(_nameController.text);
              },
              child: const Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}
