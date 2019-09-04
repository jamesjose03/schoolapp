import 'package:flutter/material.dart';
import './login.dart';

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
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Welcome!'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.school),
            Align(
            child: Text('Welcome to the App!', 
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
                Navigator.of(context).push(
                  new PageRouteBuilder(
                    pageBuilder: (BuildContext context,_,__) {
                      return new LoginPage();
                    }
                  )
                );
              },
              child: Text('Sign In'),
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
            )
          ],
        ),
      );
    }
  }