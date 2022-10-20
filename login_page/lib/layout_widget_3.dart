// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LayoutWidget3 extends StatefulWidget {
  const LayoutWidget3({Key? key}) : super(key:key);

@override
State<LayoutWidget3> createState() => _LayoutWidgetState3();
}

class _LayoutWidgetState3 extends State<LayoutWidget3>{

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
                      const SizedBox (
                        height: 20
                      ),
                      Column(
                          children: [
                            Container(
                              height: 150,
                              width: 500,
                              color: Colors.grey[350],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 150,
                              width: 500,
                              color: Colors.grey,
                            ),
                          ]
                      )
                    ]
                ),
              ),
            )
        );
  }
}