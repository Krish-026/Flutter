import 'package:flutter/material.dart';
import 'package:fourthapp/roundedButton.dart';

class CustomWidgetF extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Widget'),
      ),

      body: CustomWidgetF1(),
    );
  }
}

class CustomWidgetF1 extends StatelessWidget{
  @override
  Widget build(Object context) {
    return RoundedButton(
      btName: 'Login', 
      icon: Icon(Icons.lock),
      callBack: (){
        debugPrint("Logged in!!");
      },
    );
  }

}