import 'package:firstapp/models/message_model.dart';
import 'package:flutter/material.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0,),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Favorite Contacts',
                  style: TextStyle( 
                    color: Colors.blueGrey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                  ),
                IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                  ),
                  iconSize: 30,
                  color: Colors.blueGrey,
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            height: 120.0,
            // color: Colors.blue,
            child: ListView.builder(itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    CircleAvatar(  
                      radius: 35.0,
                      backgroundImage: AssetImage(favorites[index].imageUrl),
                    ),
                    SizedBox(height: 6.0,),
                    Text(favorites[index].name,
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: favorites.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 10.0),
            ),
          ),
        ],
      ),
    );
  }
}
