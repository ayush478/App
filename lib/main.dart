import 'package:babble/services/auth.dart';
import 'package:babble/views/home.dart';
import 'package:babble/views/signin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ChatApp",
      theme: ThemeData(
          primarySwatch: Colors.purple,
          appBarTheme: AppBarTheme(backgroundColor: Color(0xFFf4c7ab))),
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
          future: AuthMethods().getCurrentUser(),
          builder: (context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasData) {
              return Home();
            } else {
              return SignIn();
            }
          }),
    );
  }
}
