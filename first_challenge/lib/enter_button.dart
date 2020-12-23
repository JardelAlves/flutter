import 'package:flutter/material.dart';

class EnterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RaisedButton(
          color: Colors.white,
          textColor: Colors.red, 
          onPressed: () {  },
        ),
      )
    );
  }
}