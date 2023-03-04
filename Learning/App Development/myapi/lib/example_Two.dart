import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myapi/Models/postModel_2.dart';


class ExampleTwo extends StatefulWidget{
  @override 
  State<StatefulWidget> createState() => _ExampleTwo();
}

class _ExampleTwo extends State<StatefulWidget>{


List<PostModel_2> userList = [];
Future<List<PostModel_2>> getUserApi ()async{
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

  var data = jsonDecode(response.body.toString());
  if(response.statusCode == 200){
    for(Map i in data){
      debugPrint(i['name']);
      userList.add(PostModel_2.fromJson(i as Map<String, dynamic>));
    }
    return userList;
  }
  else {
    return userList;
  }
}


  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Api'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getUserApi(),
              builder: (context, snapshot) {
                if(!snapshot.hasData){
                  return CircularProgressIndicator();
                }
                else{ 
                  return ListView.builder(
                  itemCount: userList.length,
                  itemBuilder: (context, index){
                    return Card(
                      child: Column( 
                        children: [
                          ReusableRow(title: 'Name', value: snapshot.data![index].name.toString()),
                          ReusableRow(title: 'UseName', value: snapshot.data![index].username.toString()),
                          ReusableRow(title: 'Email', value: snapshot.data![index].email.toString()),
                          ReusableRow(title: 'Address', value: 
                          snapshot.data![index].address!.street.toString()+' '+
                          snapshot.data![index].address!.city.toString()+' '+
                          snapshot.data![index].address!.zipcode.toString()
                          ),
                        ],
                      )
                    );
                  }
                  );
                }
              }
              ),
          ),
        ],
      ),
    );
  }
}


class ReusableRow extends StatelessWidget{
  String title, value;
  ReusableRow({Key? key, required this.title, required this.value}): super(key: key);
  @override 
  Widget build (BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ 
          Text(title),
          Text(value),
        ],
      ),
    );
  }
}
