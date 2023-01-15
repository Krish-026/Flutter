import 'package:flutter/material.dart';

class StackWidgetF extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget'),
      ),

      body: StackWidgetF2(),
    );
  }
}

class StackWidgetF1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
          Positioned(
            left: 21,
            top: 21,
            right: 21,
            bottom: 21,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.yellow,
            ),
          ),
        ],
      );
  }
}


class StackWidgetF2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
            Positioned(
              left: 21,
              top: 21,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
    );
  }
}






