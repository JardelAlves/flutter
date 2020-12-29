import 'package:flutter/material.dart';

import 'enter_button.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.red),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200.0,
                    height: 200.0,
                    child: Image.network('https://cdn.freebiesupply.com/logos/large/2x/tinder-icon-logo-black-and-white.png')),
                  
                  Container(height: 20),

                  Text('Location Changer', style: TextStyle(fontSize: 20)),

                  Container(height: 5),

                  Text('Plugin app for Tinder', style: TextStyle(fontSize: 10)),

                  Container(height: 20),

                  EnterButton()
                ]
              )
            )
          )
        ],
      )
    );
  }
}