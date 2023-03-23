import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projrct_application/screen/mainPage.dart';

class ListPage extends StatefulWidget {
  int counter = 0;
  ListPage({Key? key, required this.counter}) : super(key: key);

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
            margin: const EdgeInsets.only(top: 30, bottom: 15),
            padding: const EdgeInsets.only(left: 0, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainPage()),
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
                ),
                Text(
                  'List',
                  style: TextStyle(fontSize: 50.0),
                ),
              ],
            ),
          ),
          //Showing The body
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      //mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(top: 20, bottom: 20),
                              child: Image.asset(
                                "assets/image/tesla.jpg",
                                height: 100.0,
                                width: 120.0,
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                      "Product x " + widget.counter.toString()),
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.delete,
                                    size: 40,
                                    color: Colors.red,
                                  ),
                                  onPressed: () {
                                    // ...
                                  },
                                ),
                                const SizedBox(width: 8),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                buttonNext(context),
              ],
            ),
            //child: FoodPageBody(),
          ))
        ],
      ),
    );
  }
}

@override
Widget buttonNext(BuildContext context) {
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
