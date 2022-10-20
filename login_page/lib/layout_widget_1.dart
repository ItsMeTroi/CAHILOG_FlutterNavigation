// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'layout_widget_2.dart';

class LayoutWidget1 extends StatefulWidget {
  const LayoutWidget1({Key? key}) : super(key:key);

@override
State<LayoutWidget1> createState() => _LayoutWidgetState1();
}

class _LayoutWidgetState1 extends State<LayoutWidget1>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
        ),
            body: Center(
              child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: MaterialButton(
                                   onPressed: () {
                                      Navigator.push(
                                        context, 
                                        MaterialPageRoute(builder: (context) => LayoutWidget2()),
                                      );
                                    },
                                     color: Colors.green,
                                    shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
          
                                  child: Container(
                                    child: Text('Next',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          
                                  Container(
                                    height: 100,
                                    width: 300,
                                    color: Colors.grey[350],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 100,
                                    width: 300,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 100,
                                    width: 300,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 100,
                                    width: 300,
                                    color: Colors.grey[350],
                                  ),
                          ]
                      ),
              )
              ),
            );
  }
}