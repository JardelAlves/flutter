import 'package:flutter/material.dart';

class EnterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0)
      ),
      color: Colors.white,
      textColor: Colors.red, 
      onPressed: () {  },
      child: Container(
        width: double.infinity,
        child: Text('Login with Facebook', textAlign: TextAlign.center),
      )
    );
  }
}