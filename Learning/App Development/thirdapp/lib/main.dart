import 'package:flutter/material.dart';
void main(){
  runApp(const myApp());
}

// ignore: camel_case_types
class myApp extends StatelessWidget {
  const myApp({super.key});
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Flutter App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const DashBoard(),
    );
  }
}

class DashBoard extends StatelessWidget{
  const DashBoard({super.key});
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("DashBoard"),
      ),
      body: Container(
        color: Colors.lightGreen,
      ),
    );
  }
}