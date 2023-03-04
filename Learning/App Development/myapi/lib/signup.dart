import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
class SignUp extends StatefulWidget{
  @override 
  State<StatefulWidget> createState() => _SignUp();
}

class _SignUp extends State<StatefulWidget> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login(String email, String password) async{
    try{
      Response response = await post(
        Uri.parse('https://reqres.in/api/register'),
        body: {
          'email' : email,
          'password' : password,
        }
      );

      if(response.statusCode == 200){
        var data = jsonDecode(response.body.toString());
        debugPrint(data);
        debugPrint('Account Created Successfully');
      }
      else{
        debugPrint('Failed');
      }
    }
    catch(e){
      print(e.toString());
    }
  }


  @override 
  Widget build(BuildContext context){
    return Scaffold(
          appBar: AppBar(
            title: Text('SignUp Api'),
          ),

          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    login(emailController.text.toString(), passwordController.text.toString());
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text('Sign Up')),
                  ),
                )
              ],
            ),
          ),
    );
  }
}