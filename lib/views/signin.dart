import 'package:babble/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf9dfdc),
      appBar: AppBar(
        title: Text("chat app"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            AuthMethods().signInWithGoogle(context);
          },
          child: ClipRect(
            child: Image.asset(
              "Screenshots/google.png",
              height: 50,
              width: 50,
            ),
          ),
        ),
      ),
    );
  }
}
