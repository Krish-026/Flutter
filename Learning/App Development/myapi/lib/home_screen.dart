import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:myapi/Models/post_model.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreen();
}

class _HomeScreen extends State<StatefulWidget> {
  
  List<post_model_1> postList = [];

  Future<List<post_model_1>> getPostapi ()async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode == 200){
      for(Map i in data){
        postList.add(post_model_1.fromJson(i as Map<String, dynamic>));
      }
      return postList;
    }
    else {
      return postList;

    }
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Json to Dart'),
      ),

      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: FutureBuilder(
              future: getPostapi(),
              builder: (context, snapshot) {
              if(!snapshot.hasData){
                return Text('Loading');
              }
              else{
                return ListView.builder(
                  itemBuilder: (context, index){
                    return Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Title', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                          Text(postList[index].title.toString()),
                          SizedBox(height: 10,),
                          Text('Description', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                          Text(postList[index].body.toString()),
                          SizedBox(height: 10,),
                        ],
                      )
                      );
                  },
                  itemCount:postList.length,
                );
              }
            }),
          ),
        ],
      ),
    );
  }
}

