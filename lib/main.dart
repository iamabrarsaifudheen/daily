import 'package:daily/sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily',
      theme: ThemeData(
        backgroundColor: const Color(0xffFFFAF6),
        primaryColor: const Color(0xffF5B9A7),
      ),
      home: const SignIn(),
    );
  }
}
