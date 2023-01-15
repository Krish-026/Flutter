import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const DashBoard(),
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
