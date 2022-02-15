import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  //initilization of firebase before using it
  /*WidgetsFlutterBinding is binding the flutter framework with firebase framework because without it no 
  widget of flutter framework will work. Then Firebase.initilizeApp will initilize the firebase app and will
  return it. */
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(
            'Firebase has been initilized',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      )),
    );
  }
}
