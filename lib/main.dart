import 'package:flutter/material.dart';
import 'package:zoom_clone/pages/joinmeeting.dart';
// import 'package:zoom_clone/pages/page1.dart';
// import 'package:zoom_clone/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const JoinMeeting(),
    );
  }
}
