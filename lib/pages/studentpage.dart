import 'package:flutter/material.dart';

class StudentPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StudentPageState();
  }
}

class StudentPageState extends State<StudentPage> {
  @override
  Widget build (BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Student Page'),
      ),
    );
  }
}