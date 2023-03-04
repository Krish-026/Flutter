import 'package:flutter/material.dart';


class Wednesday18f extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Login with your moblie"),
                    SizedBox(height: 11,),
                    Stack(
                      children: [
                        Container(
                        width: 150,
                        height: 40,
                        // alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10, bottom: 8),
                          child: Text("9425677707"),
                        ),
                        decoration: BoxDecoration(
                        // color: Colors.amber,
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 120),
                      child: Icon(Icons.check, size: 30, color: Colors.green),
                      decoration: BoxDecoration(
                      color: Colors.white,
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20),
                        
                      ),
                    ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
        ),
    );
  }
}



List<Widget> getMyWidgetse(){
  List<Color>myContainerColors = [
    Colors.amber,
    Colors.blue,
  ];
    List<Widget> myResult = [];

    for (var i = 0; i < myContainerColors.length; i++) {
      myResult.add(Container(
        child: Positioned(
          width: (i == 1) ? 30 : 100,
          height: (i == 1) ? 30 : 100,
          child: Container(
            width: 100 / (i + 1),
            height: 100 / (i + 1),
            color: myContainerColors[i],
            child: Center(child: Icon(Icons.alarm_on, size: 30,)),
          ),
        ),
      ));
    }

    return myResult;

}

class Wednesday18e extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 400,
          height: 400,
          child: Stack(
            fit: StackFit.loose,
            // fit: StackFit.expand,
            // alignment: AlignmentDirectional.center,
              children: [
                ...getMyWidgetse()
              ],
          ),
        ),
      ),
      );
  }
}







List<Widget> getMyWidgetsd(){
  List<Color>myContainerColors = [
    Colors.amber,
    Colors.blue,
  ];
    List<Widget> myResult = [];

    for (var i = 0; i < myContainerColors.length; i++) {
      myResult.add(Container(
        child: Positioned(
          width: (i == 1) ? 30 : 100,
          height: (i == 1) ? 30 : 100,
          child: Container(
            width: 100 / (i + 1),
            height: 100 / (i + 1),
            color: myContainerColors[i],
            child: Center(child: Text("${i + 1}")),
          ),
        ),
      ));
    }

    return myResult;

}

class Wednesday18d extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 400,
          height: 400,
          child: Stack(
            fit: StackFit.loose,
            // fit: StackFit.expand,
            // alignment: AlignmentDirectional.center,
              children: [
                ...getMyWidgetsd()
              ],
          ),
        ),
      ),
      );
  }
}





// List<Widget> getMyWidgetsc(){
//   List<Color>myContainerColors = [
//     Colors.amber,
//     Colors.blue,
//     Colors. red,
//     Colors.yellow,
//     Colors.green,
//     Colors.amber,
//     Colors.blue,
//     Colors. red,
//     Colors.yellow,
//     Colors.green,
//     Colors.amber,
//     Colors.blue,
//     Colors. red,
//     Colors.yellow,
//     Colors.green,
//   ];
//     List<Widget> myResult = [];

//     for (var i = 0; i < myContainerColors.length; i++) {
//       myResult.add(Container(
//         // color: myContainerColors[i].withAlpha(100),
//         child: Container(
//           child: Padding(
//             padding: EdgeInsets.all(8.0*i),
//             child: Container(
//               width: 100,
//               height: 100,
//               color: myContainerColors[i],
//               child: Center(child: Text("${i + 1}")),
//             ),
//           ),
//           // child: Row(
//           //   children: [
//           //     Padding(
//           //       padding: EdgeInsets.all(8.0*i),
//           //       child: Container(
//           //         width: 100,
//           //         height: 100,
//           //         color: myContainerColors[i],
//           //         child: Center(child: Text("${i + 1}")),
//           //       ),
//           //     ),
//           //   ],
//           // ),
//         ),
//       ));
//     }

//     return myResult;

// }



// class Wednesday18c extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           width: 400,
//           height: 400,
//           color:Colors.black,
//           child: Stack(
//             fit: StackFit.expand,
//             alignment: AlignmentDirectional.center,
//               children: [
//                 ...getMyWidgetsc()
//               ],
//           ),
//         ),
//       ),
//       );
//   }
// }


// List<Widget> getMyWidgetsb(){
//   List<Color>myContainerColors = [
//     Colors.amber,
//     Colors.blue,
//     Colors. red,
//     Colors.yellow,
//     Colors.green,
//     Colors.amber,
//     Colors.blue,
//     Colors. red,
//     Colors.yellow,
//     Colors.green,
//     Colors.amber,
//     Colors.blue,
//     Colors. red,
//     Colors.yellow,
//     Colors.green,
//   ];
//     List<Widget> myResult = [];

//     for (var i = 0; i < myContainerColors.length; i++) {
//       myResult.add(Container(
//         color: myContainerColors[i].withAlpha(100),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               width: 100,
//               height: 100,
//               color: myContainerColors[i],
//               child: Center(child: Text("${i + 1}")),
//             ),
//           ],
//         ),
//       ));
//     }

//     return myResult;

// }


// class Wednesday18b extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           color:Colors.yellow[100],
//           child: ListView(
//             children: [
//               ...getMyWidgetsb()
//             ],
//           ),
//         ),
//       ),
//       );
//   }
// }





List<Widget> getMyWidgets(){
  List<Color>myContainerColors = [
    Colors.amber,
    Colors.blue,
    Colors. red,
    Colors.yellow,
    Colors.green,
    Colors.amber,
    Colors.blue,
    Colors. red,
    Colors.yellow,
    Colors.green,
    Colors.amber,
    Colors.blue,
    Colors. red,
    Colors.yellow,
    Colors.green,
  ];
    List<Widget> myResult = [];

    for (var i = 0; i < myContainerColors.length; i++) {
      myResult.add(Container(
        width: 100,
        height: 100,
        color: myContainerColors[i],
        child: Center(child: Text("${i + 1}")),
      ));
    }

    return myResult;

}


class Wednesday18a extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
          
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    ...getMyWidgets(),
                ],
              ),
          ),
        ),
      ),
    );
  } 
}