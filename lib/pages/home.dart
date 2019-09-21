import 'package:flutter/material.dart';
import './login.dart';
import './transition.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

  class _HomePageState extends State<HomePage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color(0xFFFFE6B4),
        resizeToAvoidBottomPadding: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.school),
            Align(
            child: Text('Indian School Salalah', 
            style: TextStyle(
              fontFamily: 'Open Sans',
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 25,
              ),
            ),
            alignment: Alignment(0, 0),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                FadeRoute(page: LoginPage()));
              },
              child: Text('Sign In'),
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(500.0)),
              color: Color(0xFFB38867),
              textColor: Colors.white,
            )
          ],
        ),
      );
    }
  }