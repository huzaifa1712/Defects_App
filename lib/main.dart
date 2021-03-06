import 'package:flutter/material.dart';
import 'home/home.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async {
  // these first two lines are needed to intialise Firebase before continuing with the app
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: Home()
    );
  }
}

