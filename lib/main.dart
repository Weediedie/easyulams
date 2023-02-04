import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:easyulam/screens/login_dart.dart';
void main() async{
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
   options: FirebaseOptions(
      apiKey: "AIzaSyBryd_O56M08_tF7T24blLT2FHX9Y3tgOU",
      appId: "1:797984913689:android:785b69da2a6b9704846d88",
      messagingSenderId: "797984913689",
      projectId: "easy-ulam",
    ),
);
runApp(const MyApp());
}
 

class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'SJI Info',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.blue,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(
            fontSize: 24.0,
          ),
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
        ),
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 46.0,
          color: Colors.blue.shade700,
          fontWeight: FontWeight.w500,
        ),
        bodyText1: const TextStyle(fontSize: 18.0),
      ),
    ),
    home: LoginScreen(),
  );
}
}