import 'package:first_app/Wednesday_18.dart';
import 'package:first_app/monday_23.dart';
import 'package:flutter/material.dart';

import 'Friday20.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:Monday23A(),
    );
  }
}



// void main(){
//   // Thursday 19 , Map
//   // Map -> key and value pair

//   Map<int, String> myStringMap = Map(); // new Map()
//   myStringMap.addAll({6: 'Abce', 3 : 'Vishal'}); // Key Value pair
//   myStringMap[1] = 'Krishna';
//   print(myStringMap[1]);
//   // myStringMap.entries(); will take another map, it is iterable


// }







// Stateful Widgets




