import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  createState() => new MyStatefulWidgetState();
}

class MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return new Text('my text');
  }
}