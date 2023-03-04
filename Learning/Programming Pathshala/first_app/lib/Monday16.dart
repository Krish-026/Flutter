import 'package:flutter/material.dart';


class Monday6 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                    decoration: BoxDecoration(
                      border: Border.all(  
                      color: Colors.green[900]!,
                      width: 5,         
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 400,
                    height: 400,                  
                    child: Image.asset("assets/images/image1.jpg"),
                    ),
                    Text("Coffee",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, )
                    ),
                    ]
                ),
              ),              
            ],
          ),
        ),
      )
    );
// Images

    // Assets Image

    // File Image

    // Network Images





  }
}


class Monday5 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: SafeArea(
        child: Container(
          child: Text("Hello World"),
          ),
      )
    );
  }
}




class Monday4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Center(
        child: Container(
          width: 200, 
          height: 200,
          decoration: BoxDecoration( 
            borderRadius: BorderRadius.circular(20),
            // ignore: prefer_const_constructors
            gradient: LinearGradient(  
              // colors: [Colors.red, Colors.orange],
              colors: [Colors.orange, Colors.white, Colors.green],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),

          ),
        ),
      ),

    );
  }

}




class Monday3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Center(
        child: Container(
          padding: EdgeInsets.all(40),
          // color: Colors.redAccent,
          width: 200, 
          height: 200,
          decoration: BoxDecoration( 
            color: Colors.green,
            border: Border.all(  
              // color: Colors.black,
              color: Colors.green[900]!,
              // color: Color.fromARGB(255, 11, 107, 16),
              width: 5,         
            ),
            borderRadius: BorderRadius.circular(20),
            // borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
            boxShadow:[
              BoxShadow(
                color: Colors.black,
                offset: Offset(0,0), // Axis
                blurRadius:20,
                spreadRadius: 10,
              ),
              BoxShadow(
                color: Colors.red,
                offset: Offset(0,0), // Axis
                blurRadius:20,
                spreadRadius: 10,
              ),
            ],
          ),
        ),
      ),

    );
  }

}


class Monday2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Center(
        child: Container(
          padding: EdgeInsets.all(40),
          color: Colors.redAccent,
          width: MediaQuery.of(context).size.width/2,
          height: MediaQuery.of(context).size.height/2,
          // height: double.infinity/2,
        ),
      ),

    );
  }

}


class Monday1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
          padding: EdgeInsets.all(40),
          // margin: EdgeInsets.all(40),
          child: Container(
            padding: EdgeInsets.all(20),
            // margin: EdgeInsets.all(40),
            color: Colors.blue,
            child: Container(
              // margin: EdgeInsets.all(20),
              color: Colors.greenAccent,
            ),
          ),
        ),
      ) ,

    );
  }

}





class DashBoard extends StatelessWidget {
  const DashBoard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DashBoard'),
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 300,
                width: 300,
                color: Colors.blue,
                child: Center(
                    child: Text('Text Family',
                        style: TextStyle(
                            fontFamily: 'KrishnaFamily',
                            fontSize: 25,
                            fontWeight: FontWeight.w900))),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                debugPrint("Click Me!");
              },
              child: Text('Click Here!'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Float Click");
        },
        child: Text("+"),
      ),
    );
  }
}