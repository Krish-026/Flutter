import 'package:flutter/material.dart';
class CategorySelector extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _CategorySelector();
}

class _CategorySelector extends State<CategorySelector>{

  int selectedIndex = 0;
  final List<String> categories = ['Messages', 'Online', 'Groups', 'Requests', 'Status'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(itemBuilder: (context, index){
        return GestureDetector(
          onTap:() {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Text(
              categories[index], 
              style: TextStyle(  
                color:index == selectedIndex ? Colors.white: Colors.white60,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),),
          ),
        );
      },
      itemCount: categories.length,
      scrollDirection: Axis.horizontal,
      )
    );
  }

}

