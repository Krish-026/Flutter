// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
    var arrNames = ['Krishna', 'Rajneesh', 'Kamal', 'Abc', 'Kalli', 'Rahul'];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      // Container Decoration

      // body: Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   color: Colors.blue.shade50,
      //   child: Center(
      //     child: Container(
      //       width: 150,
      //       height: 150,
      //       // color: Colors.red,    //  use in decoration when decoration used
      //       decoration: BoxDecoration(
      //           color: Colors.red,
      //           // borderRadius: BorderRadius.circular(11),
      //           // borderRadius: const BorderRadius.only(topLeft: Radius.circular(21), bottomRight: Radius.circular(21),),
      //           border: Border.all(
      //             width: 10,
      //             color: Colors.blue,
      //           ),
      //           boxShadow: [
      //             const BoxShadow(
      //               blurRadius: 11,
      //               // spreadRadius: 0,
      //             )
      //           ],
      //           shape: BoxShape.circle,
      //       ),
      //     ),
      //   ),
      // ),

      // Expand Widget

      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [

      //     Expanded(
      //       child: Container(
      //         width: 50,
      //         height: 100,
      //         color: Colors.red,
      //       ),
      //     ),
      //     Container(
      //       width: 50,
      //       height: 100,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       width: 50,
      //       height: 100,
      //       color: Colors.yellow,
      //     ),
      //     Container(
      //       width: 50,
      //       height: 100,
      //       color: Colors.green,
      //     )
      //   ],
      // ),

      //   body: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [

      //      Expanded(
      //        child: Container(
      //           width: 50,
      //           height: 100,
      //           color: Colors.red,
      //         ),
      //      ),

      //     Expanded(
      //       child: Container(
      //         width: 50,
      //         height: 100,
      //         color: Colors.blue,
      //       ),
      //     ),
      //     Expanded(
      //       child: Container(
      //         width: 50,
      //         height: 100,
      //         color: Colors.yellow,
      //       ),
      //     ),
      //     Expanded(
      //       child: Container(
      //         width: 50,
      //         height: 100,
      //         color: Colors.green,
      //       ),
      //     )
      //   ],
      // ),

      // flex to divide in ratio

      //   body: Row(
      //   children: [
      //      Expanded(
      //       flex: 2,
      //        child: Container(
      //           width: 50,
      //           height: 100,
      //           color: Colors.red,
      //         ),
      //      ),

      //     Expanded(
      //       flex: 4,
      //       child: Container(
      //         width: 50,
      //         height: 100,
      //         color: Colors.blue,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         width: 50,
      //         height: 100,
      //         color: Colors.yellow,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         width: 50,
      //         height: 100,
      //         color: Colors.green,
      //       ),
      //     )
      //   ],
      // ),

      //   body: Column(
      //   children: [

      //      Expanded(
      //       flex: 2,
      //        child: Container(
      //           // width: 50,
      //           height: 100,
      //           color: Colors.red,
      //         ),
      //      ),

      //     Expanded(
      //       flex: 4,
      //       child: Container(
      //         // width: 50,
      //         height: 100,
      //         color: Colors.blue,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         // width: 50,
      //         height: 100,
      //         color: Colors.yellow,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         // width: 50,
      //         height: 100,
      //         color: Colors.green,
      //       ),
      //     )
      //   ],
      // ),

      // Margin and Padding
      // body: const Padding(
      //   // padding: EdgeInsets.all(8.0),
      //   padding: EdgeInsets.only(top: 11, left: 20),
      //   child: Text(
      //     'Hello World!',
      //     style: TextStyle(fontSize: 25),
      //   ),
      // )

      // body: Container(
      //   color: Colors.blueAccent,
      //   margin: const EdgeInsets.all(30),
      //   child: const Text(
      //     'Hello World!',
      //     style: TextStyle(fontSize: 25),
      //   ),
      // )

      // body: Container(
      //   color: Colors.blueAccent,
      //   margin: const EdgeInsets.all(30),
      //   child: const Padding(
      //     // padding: EdgeInsets.all(8.0),
      //     padding: EdgeInsets.only(top: 11, left: 20),
      //     child: Text(
      //       'Hello World!',
      //       style: TextStyle(fontSize: 25),
      //     ),
      //   ),
      // )

      // body: ListView.separated(itemBuilder: (context, index){
      //   return ListTile(

      //     //use any or all
      //     leading: Text('${index+1}'),
      //     title: Text(arrNames[index]),
      //     subtitle: const Text('Number'),
      //     trailing: Icon(Icons.add),

      //   );
      // },
      // itemCount: arrNames.length,
      //   separatorBuilder: (context, index){
      //     return Divider(height: 100, thickness: 1,);
      //   },
      // ),

      // CircleAvatar
      // body: Center(
      //     child: CircleAvatar(
      //   // child: Text(
      //   //   'Hello Krishna Font Here',
      //   //   style: TextStyle(fontFamily: 'KrishnaFamily'),
      //   // ),
      //   backgroundImage: AssetImage('assets/images/flutter.png'),
      //   backgroundColor: Colors.lightGreenAccent,
      //   // use any one
      //   // minRadius: 50,
      //   maxRadius: 50,
      //   // radius: 100,
      // )),

      // body: Center(
      //     child: CircleAvatar(
      //   child: Text(
      //     'Hello Krishna',
      //     style: TextStyle(fontFamily: 'KrishnaFamily', color: Colors.white),
      //   ),
      //   // backgroundImage: AssetImage('assets/images/flutter.png'),
      //   backgroundColor: Colors.black,
      //   // use any one
      //   // minRadius: 50,
      //   maxRadius: 50,
      //   // radius: 100,
      // )),

      body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.blueGrey,
                  spreadRadius: 5
                ),
              ]
            ),
            child: CircleAvatar(
        child: Container(
            width: 100,
            height: 100,
            child: Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  child: Image.asset('images/flutter.png'),
                ),
                SizedBox(height: 20,),
                Text('Name'),
              ],
            ),
        ),
        // backgroundColor: Colors.black,
        
        maxRadius: 80,
      ),
          )),
    );
  }
}
