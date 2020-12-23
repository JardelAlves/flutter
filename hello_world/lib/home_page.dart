import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network('https://img.ibxk.com.br/2019/02/17/17124052466014.jpg?w=328')
              ),
              accountName: Text('Jardel Alves'), 
              accountEmail: Text('email@email.com')
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text('Início'),
              subtitle: Text('Tela de início'),
              onTap: () {
                print('Início');
              },
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text('Sair'),
              subtitle: Text('Tela de login'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ],),
      ),
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [CustomSwitch()],
      ),
      
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomSwitch(),
            Text('Contador: $counter')
          ]
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () { setState(() { counter++; }); }
      )
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) { AppController.instance.changeTheme(); }
    );
  }
}