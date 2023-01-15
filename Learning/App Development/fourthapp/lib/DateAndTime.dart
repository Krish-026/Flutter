import 'package:flutter/material.dart';

class DateAndTime extends StatefulWidget{
  const DateAndTime({super.key}); 
  @override
  State<StatefulWidget> createState() => _DateAndTime();
}
  
class _DateAndTime extends State<StatefulWidget>{
  @override
  Widget build(BuildContext context){
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date and Time'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Current Time ${time}\nYear: ${time.year}\nMonth: ${time.month}',
                style: TextStyle(fontSize: 25,)
              ),
              const SizedBox(height: 10),
              ElevatedButton(onPressed: (){
                debugPrint('Time and Date');
                setState(() {
                  
                });
              }, child: const Text('Click'),),
              
            ],
          ),
        ),
      )
    );
    }  
  }