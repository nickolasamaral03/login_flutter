import 'package:flutter/material.dart';
import 'package:login_flutter/components/buttonSend.dart';
import 'package:login_flutter/components/my_textField.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controllers
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.grey[500],
            body: SafeArea(
              child: Center(
                child: Column(children: [
                  SizedBox(height: 80),

                  Icon(Icons.flutter_dash, size: 50),

                  Text(
                    "Welcome, i've missed you!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),

                  SizedBox(height: 25),

                  Text("Email",
                      style: TextStyle(fontSize: 20, color: Colors.white)),

                  MyTextField(
                    controller: userNameController,
                    hintText: 'Email',
                    obscureText: false,
                  ),

                  SizedBox(height: 50),

                  Text("Password",
                      style: TextStyle(fontSize: 20, color: Colors.white)),

                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),

                  Button(),

                  Text(
                    "Forgot Password?",
                    style: TextStyle(fontSize: 11, color: Colors.yellow),
                  ),
                ]),
              ),
            )));
  }
}
