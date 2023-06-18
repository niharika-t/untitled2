import 'package:flutter/material.dart';
import 'dart:html' as html;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("Open External Link"),
          backgroundColor: Colors.redAccent,
        ),
        body: Container(
            child:Center(
              child: ElevatedButton(
                onPressed: (){
                  html.window.open('https://sites.google.com/view/art-and-animation/home',"_blank");
                },
                child: Text("Open Flutter link"),
              ),
            )
        )
    );
  }
}
