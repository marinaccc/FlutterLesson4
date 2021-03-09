import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
            ),
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
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(50.0),
              child:Data('London', '2.2°C', 'Last Updated at 6:42 PM', image:'assets/images/snow.png'),
          ),),
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

class Data extends StatelessWidget {
  final String _city;
  final String _temp;
  final String _update;
  String _image;


  Data(this._city, this._temp, this._update, {String image}) {
    _image = image;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_image != null && _image != '')
              Image.asset(
              _image,
              width: 100.0,
              height: 100.0,
              fit: BoxFit.contain,
              )
            else
              Container(),
            Padding(
              padding: EdgeInsets.all(10.0),
                child:Text(_city,
                  style: TextStyle( fontFamily: 'RedHatDisplayMedium',
                      fontSize: 30.0),),),
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
            child:Text(_temp,
              style: TextStyle(fontFamily: 'RedHatDisplayBold',
                  fontSize: 30.0),),),
            Text(_update,
              style: TextStyle(fontFamily: 'RedHatDisplayRegular',
                  fontSize: 10.0),),
         ]),
    );
  }
}

