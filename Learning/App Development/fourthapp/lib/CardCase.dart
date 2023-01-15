// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CardCase extends StatelessWidget {
  const CardCase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Case'),
      ),
      body: Container(
        color: Colors.grey[300],

        child: Center(
          
          child: Card(
              elevation: 20,
              shadowColor: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text('Hello World',
                    style: TextStyle(
                      fontFamily: 'KrishnaFamily',
                      fontSize: 25,
                    )),
              )),
        ),
      ),
    );
  }
}
