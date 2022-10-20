// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'layout_widget_3.dart';


class LayoutWidget2 extends StatefulWidget {
  const LayoutWidget2({Key? key}) : super(key:key);

@override
State<LayoutWidget2> createState() => _LayoutWidgetState2();
}

class _LayoutWidgetState2 extends State<LayoutWidget2>{

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
                                        MaterialPageRoute(builder: (context) => LayoutWidget3()),
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
                      Row(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.grey[350],
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.grey[350],
                          ),
                        ]
                      ),
                    ]
                ),
              ),
            )
        );
  }
}