import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projrct_application/screen/mainPage.dart';



class ListPage extends StatefulWidget {
  ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  // final databaseRef = FirebaseDatabase.instance.reference();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Showing the header
          Container(
            child: Container(
              margin: const EdgeInsets.only(top: 30, bottom: 15),
              padding: const EdgeInsets.only(left: 0, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MainPage()),
                      )
                    },
                    icon: Icon(
                      Icons.chevron_left_outlined,
                      color: Color.fromRGBO(135, 109, 245, 1),
                      size: 100,
                    ),
                    label: Text(
                      '',
                    ),
                  ),Text('List',style: TextStyle(fontSize: 50.0),),button(context),
                ],
              ),
            ),
          ),
          //Showing The body
          Expanded(
              child: SingleChildScrollView(
            //child: FoodPageBody(),
          ))
        ],
      ),
    );
  }
}

  @override
  Widget button(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          // title: const Text('AlertDialog Title'),
          // content: const Text('AlertDialog description'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('Next'),
    );
  }
