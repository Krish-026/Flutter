// ignore_for_file: prefer_const_literals_to_create_immutables

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

    var arrNames = ['Krishna', 'Rajneesh', 'Kamal', 'Krish'];
    return Scaffold(
      appBar: AppBar(

        title: const Text("Second App"),
      ),




      // ListView

      // body: Center(
      //   child: ListView(
      //     // scrollDirection: Axis.horizontal,
      //     scrollDirection: Axis.vertical, // Bydefault vertical
      //     reverse: true, // Bydefault false
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: const Text('One', style : TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: const Text('Two', style : TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: const Text('Three', style : TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
      //       ),
      //       const Padding(
      //         padding: EdgeInsets.all(8.0),
      //         child: Text('Four', style : TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: const Text('Five', style : TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
      //       ),
      //     ],
      //   ),
      // ),


      // ListView Builder 
      

      // body: ListView.builder(itemBuilder: (context, index){
      //     return const Text('One', style : TextStyle(fontSize: 21, fontWeight: FontWeight.w500),);
      //   },
      //    itemCount: 5,
      //   ),

      // body: ListView.builder(itemBuilder: (context, index){
      //     return Text(arrNames[index], style : const TextStyle(fontSize: 21, fontWeight: FontWeight.w500),);
      //   },
      //    itemCount: arrNames.length,
      // ),


      // body: ListView.builder(itemBuilder: (context, index){
      //     return Text(arrNames[index], style : TextStyle(fontSize: 21, fontWeight: FontWeight.w500),);
      //   },
      //    itemCount: arrNames.length,
      //    itemExtent: 1000,  //Increase size and Scrollable
      // ),

      // body: ListView.builder(itemBuilder: (context, index){
      //     return Text(arrNames[index], style : TextStyle(fontSize: 21, fontWeight: FontWeight.w500),);
      //   },
      //    itemCount: arrNames.length,
      //    itemExtent: 200,  //Increase size and Scrollable
      //    scrollDirection: Axis.horizontal,
      // ),

      body: ListView.separated(itemBuilder: (context, index){
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(arrNames[index], style : TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(arrNames[index], style : TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
              ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(arrNames[index], style : TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
              ),
            ],
          );
        },
         itemCount: arrNames.length,
        //  scrollDirection: Axis.horizontal,
         separatorBuilder: (contex, index){
          // return const Divider(height: 50,);
          return const Divider(height: 200, thickness: 3,);
         },
      ),
    );
  }
}
