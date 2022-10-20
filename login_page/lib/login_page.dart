// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'layout_widget_1.dart';


class LoginPage extends StatefulWidget{
  const LoginPage ({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
//txt controllers

final _userControl = TextEditingController();
final _passControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
return Container(
  decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.green, Colors.yellow
                ],
              ),
            ),
  child:   Scaffold(
       backgroundColor: Colors.transparent,
    body: SafeArea(
  
      child: Center(
  
        child: SingleChildScrollView(
                  child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
               Image.asset(
                'assets/images/LogoJAG.png',
                height: 150,
                width: 150,
              ),
          // Jaguars Esports
  
            Text(
              'Jaguars Esports',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 36,
              ),
            ),
  
            SizedBox(height: 10),
  
            Text(
              'This is the official Jaguars Esports App',
            style: TextStyle(
              fontSize: 20,
              ),
            ),
  
            SizedBox(height: 50),
  
  
  
  
  
          // user.textfield
  
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
  
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    controller: _userControl,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'UserName',
                    ),
                  ),
                ),
              ),
            ),
  
            SizedBox(height: 10),
  
  
  
          // password.textfield
  
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
  
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    controller: _passControl,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'PassWord',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

  
  
          // sign-in button
  
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => LayoutWidget1()),
                  );
                },
                    child: Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12),
                    ),
  
                  child: Center(
                    child: Text('Sign In',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ),
              ),
            ),
            SizedBox(height: 10),
  
  
  
          // not a member? register now
  
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    ),
                  ),
  
                Text(
                  ' Register Now',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
              ],
            ),
            ],
          ),
        ),
      ),
    ),
  ),
);
}
}