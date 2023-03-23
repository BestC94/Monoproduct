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
  // final databaseRef = FirebaseDatabase.instance.reference();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      margin: const EdgeInsets.only(top: 50, bottom: 15),
      alignment: Alignment.topCenter,
      padding: EdgeInsets.all(15),
      child: Wrap(children: [
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
        ),Text('Prodouct',style: TextStyle(fontSize: 50.0),),button(context),
      ]),
    ),
    //Center
    );
  }
}

  Widget button(BuildContext context) {
    return OutlinedButton(
       style: OutlinedButton.styleFrom(
       backgroundColor: Color.fromRGBO(201, 241, 253, 0.784), //<-- SEE HERE
  ),
      onPressed: () {
        debugPrint('push Page List');
         Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListPage()),
                      );
      },
      child: const Text('Next',style: TextStyle(color: Colors.black,fontSize: 40),),
    );
  }

