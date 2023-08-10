import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Signin.dart';
import 'package:newsapp/firebase_options.dart';
import 'package:newsapp/signup.dart';
import 'package:firebase_core/firebase_core.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();


  runApp( MyApp());
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: Signup(),
    );
  }
}
