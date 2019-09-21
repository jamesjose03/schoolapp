import 'package:flutter/material.dart';
import 'package:validate/validate.dart';
import './studentpage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}

class _LoginData {
  String admnno = '';
  String password = '';
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  _LoginData _data = new _LoginData();

  String _validateAdNo(String value) {
    try {
      Validate.isAlphaNumeric(value);
    } catch (e) {
      return 'The Admission Number must be a valid one!';
    }

    return null;
  }

  String _validatePassword(String value) {
    if (value.length < 8) {
      return 'The Password must be at least 8 characters.';
    }

    return null;
  }

  void submit() {
    // First validate form.
    if (this._formKey.currentState.validate()) {
      _formKey.currentState.save(); // Save our form now.

      print('Printing the login data.');
      print('Admission Number: ${_data.admnno}');
      print('Password: ${_data.password}');
      if('${_data.admnno}' == '9817' && '${_data.password}' == 'aaabbbcccddd')
      {
        Navigator.push(context, MaterialPageRoute(builder: (context) => StudentPage()));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
      backgroundColor: Color(0xFFFFE6B4),
      appBar: new AppBar(
        title: new Text('Login'),
        backgroundColor: Color(0xFFB38867),
      ),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Form(
          key: this._formKey,
          child: new ListView(
            children: <Widget>[
              new TextFormField(
                keyboardType: TextInputType.number, 
                decoration: new InputDecoration(
                  hintText: 'Eg: 9817',
                  labelText: 'Admission Number'
                ),
                validator: this._validateAdNo,
                onSaved: (String value) {
                  this._data.admnno = value;
                }
              ),
              new TextFormField(
                obscureText: true, // Use secure text for passwords.
                decoration: new InputDecoration(
                  hintText: 'Password',
                  labelText: 'Enter your password'
                ),
                validator: this._validatePassword,
                onSaved: (String value) {
                  this._data.password = value;
                }
              ),
              new Container(
                width: screenSize.width,
                child: new RaisedButton(
                  child: new Text(
                    'Login',
                    style: new TextStyle(
                      color: Colors.white
                    ),
                  ),
                  onPressed: this.submit,
                  color: Color(0xFF626D71),
                ),
                margin: new EdgeInsets.only(
                  top: 20.0
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}