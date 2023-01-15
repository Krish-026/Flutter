import 'package:flutter/material.dart';

class GridViewF extends StatelessWidget{
  const GridViewF({super.key});
  @override 
  Widget build(BuildContext context){
    return GridViewF4();
  }
}

// ignore: must_be_immutable
class GridViewF1 extends StatelessWidget{
  GridViewF1({super.key});
  var arrColors = [Colors.red,
  Colors.orange,
  Colors.grey,
  Colors.blue,
  Colors.pink,
  Colors.green,
  Colors.purpleAccent,
  Colors.brown,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View"),
      ),

      body: Container(
        width: 300,
        child: GridView.count(  // Auto Scrollable
          crossAxisCount: 4,
          // crossAxisCount: 3,
          // crossAxisCount: 2,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: arrColors[0],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: arrColors[1],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: arrColors[2],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: arrColors[3],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: arrColors[4],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: arrColors[5],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: arrColors[6],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: arrColors[7],),
            ),
            // Container(color: arrColors[8],),
          ],
        ),
      ),
      );
  }
}

// ignore: must_be_immutable

// Cross Axis and Main Axis alignment
class GridViewF2 extends StatelessWidget{
  GridViewF2({super.key});
  var arrColors = [Colors.red,
  Colors.orange,
  Colors.grey,
  Colors.blue,
  Colors.pink,
  Colors.green,
  Colors.purpleAccent,
  Colors.brown,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View"),
      ),

      body: Container(
        width: 300,
        child: GridView.count(  // Auto Scrollable
          crossAxisCount: 4,
          // crossAxisCount: 3,
          // crossAxisCount: 2,
          mainAxisSpacing: 11, // Row
          crossAxisSpacing: 11,  // Column space
          children: [
            Container(color: arrColors[0],),
            Container(color: arrColors[1],),
            Container(color: arrColors[2],),
            Container(color: arrColors[3],),
            Container(color: arrColors[4],),
            Container(color: arrColors[5],),
            Container(color: arrColors[6],),
            Container(color: arrColors[7],),
            // Container(color: arrColors[8],),
          ],
        ),
      ),
      );
  }
}


// ignore: must_be_immutable
// maxCrossAxisExtents and GridView.extent
class GridViewF3 extends StatelessWidget{
  GridViewF3({super.key});
  var arrColors = [Colors.red,
  Colors.orange,
  Colors.grey,
  Colors.blue,
  Colors.pink,
  Colors.green,
  Colors.purpleAccent,
  Colors.brown,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View"),
      ),

      body: Container(
        height: 150,
        // width: 300,
        color: Colors.pink[200],
        child: GridView.extent(  // Auto Scrollable
          maxCrossAxisExtent: 100,
          // crossAxisCount: 3,
          // crossAxisCount: 2,
          mainAxisSpacing: 11, // Row
          crossAxisSpacing: 11,  // Column space
          children: [
            Container(color: arrColors[0],),
            Container(color: arrColors[1],),
            Container(color: arrColors[2],),
            Container(color: arrColors[3],),
            Container(color: arrColors[4],),
            Container(color: arrColors[5],),
            Container(color: arrColors[6],),
            Container(color: arrColors[7],),
            // Container(color: arrColors[8],),
          ],
        ),
      ),
      );
  }
}

// ignore: must_be_immutable
// GridView.builder()
class GridViewF4 extends StatelessWidget{
  GridViewF4({super.key});
  var arrColors = [Colors.red,
  Colors.orange,
  Colors.grey,
  Colors.blue,
  Colors.pink,
  Colors.green,
  Colors.purpleAccent,
  Colors.brown,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View"),
      ),

      body: GridView.builder(itemBuilder: ((context, index) {
        return Container(color: arrColors[index],);
      }),
      itemCount: arrColors.length, 
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        mainAxisSpacing: 11,
        crossAxisSpacing: 11,),
      ),
      );
  }
}