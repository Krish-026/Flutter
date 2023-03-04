import 'package:flutter/material.dart';
import 'package:login_auth/pages/auth_page.dart';
import 'package:login_auth/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "your api key Found in GoogleService-info.plist",
          appId: "Your app id found in Firebase",
          messagingSenderId: "Your Sender id found in Firebase",
          projectId: "Your Project id found in Firebase"));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthPage(),
    );
  }
}
