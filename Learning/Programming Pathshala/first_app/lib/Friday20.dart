import 'package:flutter/material.dart';


class Friday20b extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Friday20b();
}

class _Friday20b extends State<StatefulWidget> {

  int mynumber = 10;


  @override
  void initState() {
    super.initState();
    mynumber = getDataState();
  }

  int getDataState() {
    return 0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child : Container(
          height: 230,
          // width: 400,
          color: Colors.grey[300],
          child: Column(
            children: [
              Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 180,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text('Sarita',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),                  
                              ),
                            ),
                            Expanded(
                              child: Text('Blood',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),                  
                              ),
                            ),
                            Expanded(
                              child: Text('Bank',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),                  
                              ),
                            ),
                          ],
                        ),
                      ),

                      width: MediaQuery.of(context).size.width*0.5,
                      decoration: BoxDecoration(
                      color: Colors.grey[600],
                      borderRadius: BorderRadius.circular(10),
                        
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                        // color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Blood Group",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                            )),
                            Text("B  +ve",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            )),
                            SizedBox(height: 20,),
                            Text("Add Units",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            )
                            ),
                            Expanded(
                              child: Container(
                                // color: Colors.blueGrey,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[600],
                                ),
                                width: MediaQuery.of(context).size.width*0.40,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        if(mynumber > 0)Expanded(
                                          flex: 2,
                                          child: ElevatedButton(
                                            onPressed: OnPressedMinus,
                                            child: Text('-',style: TextStyle(color: Colors.black),),
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(Colors.white60),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 4,
                                          child: SizedBox(
                                                child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                
                                                Text(mynumber.toString()),
                                              ],
                                            )
                                          ),
                                        ),
                                        if(mynumber < 10)Expanded(
                                          flex: 2,
                                          child: ElevatedButton(
                                            onPressed: OnPressedPlus,
                                            child: Text('+', style: TextStyle(color: Colors.black),),
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(Colors.white60),
                                            ),
                                          ),
                                        ),
                                      ],
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.red,
                height: 25,
                child: Row(children: [
                  Text("You have reached maximum unit limit")
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }


  void OnPressedMinus() {
    setState(() {
      --mynumber;
    });
    debugPrint("$mynumber");
  }

  void OnPressedPlus() { 
    setState(() {
      ++mynumber;
    });
    debugPrint("$mynumber");
  }


}


class CounterAppStateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CounterAppStateful();
}

class _CounterAppStateful extends State<StatefulWidget> {
  int mynumber = 10;


  @override
  void initState() {
    super.initState();
    mynumber = getDataState();
  }

  int getDataState() {
    return 0;
  }

  @override
  Widget build(Object context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Number"),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(mynumber.toString()),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if(mynumber > 0)ElevatedButton(
                    onPressed: OnPressedMinus,
                    child: Text('-'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  if(mynumber < 10)ElevatedButton(
                    onPressed: OnPressedPlus,
                    child: Text('+'),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueGrey),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void OnPressedMinus() {
    setState(() {
      --mynumber;
    });
    debugPrint("$mynumber");
  }

  void OnPressedPlus() { 
    setState(() {
      ++mynumber;
    });
    debugPrint("$mynumber");
  }
}






// class Friday20a extends StatelessWidget {
// int mynumber = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Text("Number"),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Text(mynumber.toString()),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   ElevatedButton(
//                     onPressed: OnPressedMinus,
//                     child: Text('-'),
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   ElevatedButton(
//                     onPressed: OnPressedPlus,
//                     child: Text('+'),
//                     style: ButtonStyle(
//                       backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CounterAppStateful extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _CounterAppStateful();
// }

// class _CounterAppStateful extends State<StatefulWidget> {
//   int mynumber = 10;


//   @override
//   void initState() {
//     super.initState();
//     mynumber = getDataState();
//   }

//   int getDataState() {
//     return 13;
//   }

//   @override
//   Widget build(Object context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Text("Number"),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Text(mynumber.toString()),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   ElevatedButton(
//                     onPressed: OnPressedMinus,
//                     child: Text('-'),
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   ElevatedButton(
//                     onPressed: OnPressedPlus,
//                     child: Text('+'),
//                     style: ButtonStyle(
//                       backgroundColor:
//                           MaterialStateProperty.all(Colors.blueGrey),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void OnPressedMinus() {
//     setState(() {
//       --mynumber;
//     });
//     debugPrint("$mynumber");
//   }

//   void OnPressedPlus() {
//     setState(() {
//       ++mynumber;
//     });
//     debugPrint("$mynumber");
//   }
// }
