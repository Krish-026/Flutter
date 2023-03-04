import 'package:flutter/material.dart';

class Monday23A extends StatefulWidget{
  @override 
  State<StatefulWidget> createState() => _Monday23A();
}

class _Monday23A extends State<StatefulWidget>{
  @override 

List<String> myTags = [];
TextEditingController _controller = TextEditingController();


  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Textfield Widget'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.red),
                  hintText: 'Enter Sentence',
                ),

                controller: _controller,
                onChanged: (updatedText){
                  myTags = getMyTags(updatedText);
                  setState(() {
                    
                  });
                },
              ),
              SizedBox(height: 20,width: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [ 
                    ...getMyContainers(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


List<Widget> getMyContainers() {
    List<Widget> myCons = [];

    return myTags
        .map((e) => Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              color: Color.fromARGB(255, 48, 196, 234),
              child: Text(e),
            ))
        .toList();
  }

List<String> getMyTags(String text) {
    List<String> myTags = [];
    for (var i = 0; i < text.length; i++) {    
      if (text[i] == '#') {
        ++i;
        String newEntry = '';
        while (i < text.length  && text[i] != ' ' && text[i] != '.' ) {
          if(text[i] == '#'){
            --i;
            break;
          }
          newEntry = newEntry + text[i];
          i++;
        }
        myTags.add(newEntry);
      }
    }
    return myTags;
  }
}