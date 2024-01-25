import 'package:flutter/material.dart';
import 'package:login2/model/users.dart';
import 'package:login2/database/db_helper.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _signUp() async {
    String username = _usernameController.text.trim();
    String password = _passwordController.text.trim();

    // You may want to add validation for username and password

    User newUser = User(username: username, password: password);

    int result = await DatabaseHelper.instance.insertUser(newUser);

    if (result != 0) {
      // Successful sign-up
      print('Sign-up successful');
    } else {
      // Failed sign-up
      print('Sign-up failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _signUp,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 60,
                ),
                backgroundColor: Color.fromARGB(255, 102, 96, 20),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
