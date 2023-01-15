// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

class TextFieldF extends StatelessWidget {
  TextFieldF({super.key});
  var emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField'),
      ),
      body: Container(
        color: Colors.grey[300],
        child: Center(
          child: Container(
            width: 300, 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(  // disabled Border
                enabled: false,
                  decoration: InputDecoration(  
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 21, 214, 214),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(  // disabled Border
                enabled: false,
                  decoration: InputDecoration(  
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(  // focused Border
                  decoration: InputDecoration(  
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.deepOrange,
                        width: 2,
                    ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                TextField( // Enabled border 
                  decoration: InputDecoration(  
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 255, 34, 240),
                        width: 2,
                    ),
                    ),
                  ),
                ),

                SizedBox(height: 10,),
               TextField( // Normal border
                  decoration: InputDecoration(  
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ), 
                SizedBox(height: 10,),
                TextField(  
                  decoration: InputDecoration( 
                    // By default enabled
                    enabledBorder: OutlineInputBorder( 
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide( 
                        color: Colors.amber,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide( 
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(  
                  decoration: InputDecoration( 
                    // By default enabled
                    enabledBorder: OutlineInputBorder( 
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide( 
                        color: Color.fromARGB(255, 145, 46, 7),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide( 
                        color: Colors.red,
                      ),
                    ),
                    suffixText: "Email Address",
                    suffixIcon: Icon(Icons.email),
                  ),
                ),
                 SizedBox(height: 10,),
                TextField(  
                  decoration: InputDecoration( 
                    // By default enabled
                    enabledBorder: OutlineInputBorder( 
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide( 
                        color: Color.fromARGB(255, 145, 46, 7),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide( 
                        color: Colors.red,
                      ),
                    ),
                    suffixText: "Password",
                    // suffixIcon: Icon(Icons.email),
                    prefixIcon: IconButton( 
                      icon: Icon(Icons.remove_red_eye),
                      color: Colors.blueGrey,
                      onPressed: () {
                        
                      }
                    ),
                  ),
                ),               
                SizedBox(height: 10,),
                TextField(  
                  // Keyboard Type 
                  keyboardType: TextInputType.emailAddress,
                  controller: emailText,
                  decoration: InputDecoration( 
                    // hint text
                    hintText: "userName@gmail.com",
                    // By default enabled
                    enabledBorder: OutlineInputBorder( 
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide( 
                        color: Color.fromARGB(255, 145, 46, 7),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide( 
                        color: Colors.red,
                      ),
                    ),
                    suffixText: "Email Address",
                    suffixIcon: Icon(Icons.email),
                  ),
                ),
                 SizedBox(height: 10,),
                TextField(  
                  controller: passText,
                  // To hide Password
                  obscureText: true,
                  // To show * in place of password 
                  // By defauld '.'
                  obscuringCharacter: '*',
                  decoration: InputDecoration( 
                    // hint text
                    hintText: "Password" ,
                    // By default enabled
                    enabledBorder: OutlineInputBorder( 
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide( 
                        color: Color.fromARGB(255, 145, 46, 7),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide( 
                        color: Colors.red,
                      ),
                    ),
                    suffixText: "Password",
                    // suffixIcon: Icon(Icons.email),
                    prefixIcon: IconButton( 
                      icon: Icon(Icons.remove_red_eye),
                      color: Colors.blueGrey,
                      onPressed: () {
                        
                      }
                    ),
                  ),
                ),               
                SizedBox(height: 10,),
                ElevatedButton(
                  onPressed:(){
                    String uEmail = emailText.text.toString();
                    String uPass = passText.text;
                    debugPrint(" Email : $uEmail, Passowrd : $uPass");
                  }, child: Text('Login'),
                ) ,
              ],
            ))),
      ),
    );
  }
}
