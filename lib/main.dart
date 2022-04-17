import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zoom_clone/pages/joinmeeting.dart';
import 'package:zoom_clone/pages/loginpage.dart';
import 'package:zoom_clone/pages/meetingspage.dart';
import 'package:zoom_clone/pages/page1.dart';
import 'package:zoom_clone/pages/welcome.dart';

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
      debugShowCheckedModeBanner: false,
      title: 'Zoom Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => const Page1(),
        '/join-meeting': (context) => const JoinMeeting(),
      },
      initialRoute: '/login',
    );
  }
}
