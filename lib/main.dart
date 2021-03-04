import 'package:flutter/material.dart';

oid main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Center (child:Text('Flutter Weather')),
          actions:<Widget> [
            IconButton(
            icon: Icon(Icons.settings),
            onPressed:(){},
            color: Colors.black,
            )
          ],
        ),
        body:Container (
           decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.7, 1],
                colors: [Colors.lightBlueAccent, Colors.lightBlueAccent[100]]
              )
            ),
        ),
        floatingActionButton: FloatingActionButton(
         child: Icon(Icons.search),
         onPressed: (){},
         backgroundColor: Colors.blue,
        ),
    ),
    );
  }
}


