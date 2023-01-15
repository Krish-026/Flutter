import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget{
  final String btName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callBack;

  RoundedButton({
    super.key, 
    required this.btName, 
    this.icon, 
    this.bgColor = Colors.amber, 
    this.textStyle, 
    required this.callBack
    });
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
        onPressed:(){
          callBack!();
        },
        child: Row(),
    );
  }
}

