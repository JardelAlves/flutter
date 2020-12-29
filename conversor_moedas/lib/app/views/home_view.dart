import 'package:conversor_moedas/app/components/convert_box.dart';
import 'package:conversor_moedas/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  HomeController homeController = HomeController();

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 150, bottom: 30, left: 30, right: 30),
            child: Column(
              children: [
                Image.asset('assets/logo.png', width: 150, height: 150),
                Container(height: 50),
                ConvertBox(
                  selectedItem: homeController.toCurrency,
                  controller: toText,
                  items: homeController.currencies, 
                  onChanged: (model) {
                    setState(() {
                      homeController.toCurrency = model;
                    });
                  }
                ),
                Container(height: 10),
                ConvertBox(
                  selectedItem: homeController.fromCurrency,
                  controller: fromText,
                  items: homeController.currencies, 
                  onChanged: (model) {
                    setState(() {
                      homeController.fromCurrency = model;
                    });
                  }
                ),
                Container(height: 30),
                RaisedButton(
                  color: Colors.amber,
                  onPressed: () {
                    homeController.convert();
                  },
                  child: Text('CONVERTER'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}