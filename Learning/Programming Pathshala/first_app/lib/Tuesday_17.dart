import 'package:flutter/material.dart';

class Tuesday17c extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Tuesday"),
      // ),
      body: SafeArea(
        child: Container(
            // color: Colors.yellow,
            child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width*1.0,
                color: Colors.red,
                child: Text("I am red"),
                height: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue,
                child: Text("I am blue"),
                width: MediaQuery.of(context).size.width*1.0,
                height: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.green,
                child: Text("I am green"),
                width: MediaQuery.of(context).size.width*1.0,
                height: 100,
              ),
            ),
          ],
        )),
      ),
    );
  }
}

class Tuesday17b extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Tuesday"),
      // ),
      body: SafeArea(
        child: Container(
            // color: Colors.yellow,
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.red,
              child: Text("I am red"),
              width: 100,
            ),
            Container(
              color: Colors.blue,
              child: Text("I am blue"),
              width: 100,
            ),
            Container(
              color: Colors.green,
              child: Text("I am green"),
              width: 100,
            ),
          ],
        )),
      ),
    );
  }
}

class Tuesday17a extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Tuesday"),
      // ),
      body: SafeArea(
        child: Center(
          child: Container(
            color: Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // child 1
                Container(
                  width: 100,
                  height: 100,
                  child: Center(child: Text("1")),
                  color: Colors.blueAccent,
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: Center(child: Text("2")),
                  color: Colors.redAccent,
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: Center(child: Text("3")),
                  color: Colors.greenAccent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
