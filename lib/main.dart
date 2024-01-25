import 'package:flutter/material.dart';
import 'package:login2/pages/loginPage.dart';
import 'package:login2/pages/signupPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App',
      home: YourHomePage(), // Replace with your main home page
    );
  }
}

class YourHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
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
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.all(10.0),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                  // Add any other buttons or functionality for your home page
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 60,
                  ),
                  backgroundColor: Color.fromARGB(255, 64, 102, 83),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: Text('Login'),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
