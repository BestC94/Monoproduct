import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projrct_application/screen/listPage.dart';
import 'package:projrct_application/DataModel/ProductDataModel.dart';
import 'package:flutter/services.dart' as rootBundle;

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _counter = 0;
  // final databaseRef = FirebaseDatabase.instance.reference();
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter <= 0 ? _counter = 0 : _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50, bottom: 15),
        // alignment: Alignment.topCenter,
        // padding: EdgeInsets.all(15),
        child: Column(children: [
          //SizedBox(height: MediaQuery.of(context).size.height * 0.10),
          Padding(
            padding: EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0), //add border radius
              child: Image.asset(
                "assets/image/tesla.jpg",
                height: 300.0,
                width: 400.0,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Prodouct',
                style: TextStyle(fontSize: 50.0),
              ),
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Information product 5.00\$",
                style: TextStyle(fontSize: 30.0),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                heroTag: "btn1",
                onPressed: _decrementCounter,
                tooltip: 'decrement',
                child: Icon(Icons.remove),
              ),
              SizedBox(width: 10),
              Text(
                _counter.toString(),
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(width: 10),
              FloatingActionButton(
                heroTag: "btn2",
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: Icon(Icons.add),
              ),
            ],
          ),
          SizedBox(height:20),
          button(context)
        ]),
      ),
      //Center
    );
  }

  Widget button(BuildContext context) {
    return Center(
        child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Color.fromRGBO(201, 241, 253, 0.784), //<-- SEE HERE
      ),
      onPressed: () {
        //debugPrint('push Page List');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ListPage(counter:_counter)),
        );
      },
      child: Text(
        (_counter*5).toString()+".00 \$",
        style: TextStyle(color: Colors.black, fontSize: 40),
      ),
    ));
  }
}
