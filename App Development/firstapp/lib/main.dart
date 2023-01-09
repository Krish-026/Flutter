// ignore: avoid_web_libraries_in_flutter, unused_import
import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: const Text('Flutter Container'),
      ),

      //Center Widget -> ctrl + .


      // body: Center(
      //   child: Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.limeAccent,
      //       child: const Center(
      //         child: Text('Hello Child',
      //         style: TextStyle(
      //           color: Color.fromARGB(255, 7, 255, 102)
      //           ),
      //           ),),
      //     ),
      // ), 


      // Text Widget

      // body:  Center(

      //   child:  Container(
      //     width: 300,
      //     height: 500,
      //     child: const Text('Hellor Flutter', style: TextStyle(
      //       fontSize: 25,
      //       color: Colors.blueAccent,
      //       fontWeight: FontWeight.bold,
      //       backgroundColor: Colors.deepOrange
      //     ),),
      //   ),
      // ),

      // Button Widget

      // TextButton
      // body: TextButton(
      //   child: const Text('Click here!!!'),
      //   onPressed: (){
      //     debugPrint('Text Button Pressed');
      //   },
      //   onLongPress: (){
      //     debugPrint("LongPressed");
      //   },)


      // Elevated Buttor


      // body: Center(
      //   child: ElevatedButton(
      //     child: const Text('Elevated Button'),
      //     onPressed: (){
      //       debugPrint('Button Pressed');
      //     },
      //     onLongPress: (){
      //       debugPrint('Long Pressed');
      //     },
      //   ),
      // ),

      // OutLineButton Depriciated

      // body: OutlinedButton(
      //   child: const Text('Outlined Button'),
      //   onPressed: (){
      //     debugPrint('Outline Clicked');
      //   },
      // )


      // Add Image
      // body: Center(
      //   child: Container(
      //     color: Colors.amber,
      //     width: 400,
      //     height: 400,
      //     child: Image.asset('assets/images/flutter.png')),
      // ),

      // Row and Coloumn

      // body: Column(
      //   children: <Widget> [
      //     const Text('A', style: TextStyle(fontSize: 25),),
      //     const Text('B', style: TextStyle(fontSize: 25),),
      //     const Text('C', style: TextStyle(fontSize: 25),),
      //     const Text('D', style: TextStyle(fontSize: 25),),
      //     const Text('E', style: TextStyle(fontSize: 25),),
      //     ElevatedButton(
      //       onPressed: (){

      //       },
      //       child: const Text('Click')
      //     )
      //   ],
      // ),

      // body: Row (
      //   children:  <Widget>[
      //     const Text('A', style: TextStyle(fontSize: 25)),
      //     const Text('B', style: TextStyle(fontSize: 25)),
      //     const Text('C', style: TextStyle(fontSize: 25)),
      //     const Text('D', style: TextStyle(fontSize: 25)),
      //     const Text('E', style: TextStyle(fontSize: 25)),
      //     ElevatedButton(
      //       onPressed:(){
              
      //       },
      //       child: const Text('Click')
      //     )

      //   ],
      // )


      // body: Row (
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children:  <Widget>[
      //     const Text('A', style: TextStyle(fontSize: 25)),
      //     const Text('B', style: TextStyle(fontSize: 25)),
      //     const Text('C', style: TextStyle(fontSize: 25)),
      //     const Text('D', style: TextStyle(fontSize: 25)),
      //     const Text('E', style: TextStyle(fontSize: 25)),
      //     ElevatedButton(
      //       onPressed:(){
              
      //       },
      //       child: const Text('Click')
      //     )

      //   ],
      // )
      
      // body: Container(
      //   // width: 200,
      //   height: 200,
      //   child: Row (
      //     // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     // mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     // mainAxisAlignment: MainAxisAlignment.center,
      //     // mainAxisAlignment: MainAxisAlignment.end,
      //     // mainAxisAlignment: MainAxisAlignment.start,  // default         
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,


      //     crossAxisAlignment: CrossAxisAlignment.center, // Contain Height centre
      //     children:  <Widget>[
      //       const Text('A', style: TextStyle(fontSize: 25)),
      //       const Text('B', style: TextStyle(fontSize: 25)),
      //       const Text('C', style: TextStyle(fontSize: 25)),
      //       const Text('D', style: TextStyle(fontSize: 25)),
      //       const Text('E', style: TextStyle(fontSize: 25)),
      //       ElevatedButton(
      //         onPressed:(){
      //           debugPrint("Pressed");
      //         },
      //         child: const Text('Click')
      //       )

      //     ],
      //   ),
      // )

      // body: Container(
      //   width: 500,
      //   height: 500,
      //   child: Column (
      //     // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     // mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     // mainAxisAlignment: MainAxisAlignment.center,
      //     // mainAxisAlignment: MainAxisAlignment.end,
      //     // mainAxisAlignment: MainAxisAlignment.start,  // default         
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,

          
      //     crossAxisAlignment: CrossAxisAlignment.end, // Contain Width centre
      //     // crossAxisAlignment: CrossAxisAlignment.stretch,
      //     children:  <Widget>[
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         // ignore: prefer_const_literals_to_create_immutables
      //         children: [
      //           const Text('R1', style: TextStyle(fontSize: 25),),
      //           const Text('R2', style: TextStyle(fontSize: 25),),      
      //           Column(
      //             mainAxisAlignment: MainAxisAlignment.spaceAround,
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //             // ignore: prefer_const_literals_to_create_immutables
      //             children: [
      //               const Text('RC1', style: TextStyle(fontSize: 25),),
      //               const Text('RC2', style: TextStyle(fontSize: 25),),
      //               const Text('RC3', style: TextStyle(fontSize: 25),),
      //               ElevatedButton(onPressed: (){
      //                 debugPrint('Clicked');
      //               }, child: const Text('Click RC')),
      //             ],
      //           ),
      //           const Text('R4', style: TextStyle(fontSize: 25),),
      //           const Text('R5', style: TextStyle(fontSize: 25),),
      //           ElevatedButton(onPressed: (){
      //             debugPrint('Pressed');
      //           }, child: const Text('Click Row')),
      //         ],
      //       ),
      //       const Text('A', style: TextStyle(fontSize: 25)),
      //       const Text('B', style: TextStyle(fontSize: 25)),
      //       const Text('C', style: TextStyle(fontSize: 25)),
      //       const Text('D', style: TextStyle(fontSize: 25)),
      //       const Text('E', style: TextStyle(fontSize: 25)),
      //       ElevatedButton(
      //         onPressed:(){
      //           debugPrint("Pressed");
      //         },
      //         child: const Text('Click')
      //       )

      //     ],
      //   ),
      // )


      
    );
  }
}
