import 'package:flutter/material.dart';

class SplitingTheApp extends StatefulWidget {
  const SplitingTheApp({super.key});

  @override
  State<StatefulWidget> createState() => _splittingTheApp();
}

// ignore: camel_case_types
class _splittingTheApp extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splitting The Widget'),
      ),
      body: Column(
        children: [app_Bar(), contacts(), midMenu(), bottomMenu(),],
      ),
    );
  }
}


class app_Bar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
            flex: 2,
            child: Container(
              // height: 300,
              color: Colors.blue,
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 100,
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                    ),
                  ),
                ),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
              ),
            ),
          );
  }
}

class contacts extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
            flex: 4,
            child: Container(
              // height: 300,
              color: Colors.orange,
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: CircleAvatar(backgroundColor: Colors.green),
                    title: Text('Name'),
                    subtitle: Text('Mob no'),
                    trailing: Icon(Icons.delete),
                  ),
                ),
                itemCount: 10,
              ),
            ),
          );
  }

}

class midMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
            flex: 2,
            child: Container(
              // height: 300,
              color: Colors.blueGrey,
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.blue,
                      )),
                ),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
              ),
            ),
          );
  }

}

class bottomMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
            flex: 2,
            child: Container(
              // height: 300,
              color: Colors.green,
              child: GridView.count(
                crossAxisCount: 4,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue,
                    )),
                  ),
                ],
              ),
            ),
          );
  }

}



