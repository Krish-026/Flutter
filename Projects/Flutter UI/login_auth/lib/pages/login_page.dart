import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_auth/components/my_button.dart';
import 'package:login_auth/components/square_tile.dart';

import '../components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  
  // Text Editing Controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  // sign user in method 
  void signUserIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.toString(), 
      password: passwordController.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              //logo
              Icon(Icons.lock, size: 100),
        
              SizedBox(
                height: 50,
              ),
        
              // Welcome  back, you've been missed!
              Text('Welcome back you\'ve been missed!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  )),
        
              SizedBox(
                height: 25,
              ),
        
              // username Textfield
              MyTextfield(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),
        
              // Password Textfield
        
              MyTextfield(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
        
              // Forgot Password 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot Password', 
                      style: TextStyle(color: Colors.grey[600])
                      ),
                  ],
                ),
              ),
        
              SizedBox(
                height: 25,
              ),
        
              // sign in button
        
              MyButton(
                onTap: signUserIn,
              ),
        
        
              SizedBox(
                height: 50,
              ),
        
              // Divider(),   // thinckness: 0.5
        
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                    child: Text('Or continue with', 
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),),
                  ),
                  Expanded(
                    child: Divider(
                      thickness:0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
        
        
              SizedBox(
                height: 50,
              ),
        
        
              // Google + Apple sign in buttons
        
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Google Button
                  SquareTile(imagePath: 'assets/images/google.png'),
        
                  SizedBox(
                    width: 25,
                  ),
                  // Apple Button
                  SquareTile(imagePath: 'assets/images/apple.png')
                ],
              ),
        
              SizedBox(height: 50),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a Member?',
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 4,),
                  Text('Register Now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
        
                  ),
                ],
              )
        
            ],
          ),
        ),
      ),
    );
  }
}


