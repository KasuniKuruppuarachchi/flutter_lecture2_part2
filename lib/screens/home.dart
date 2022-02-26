import 'package:flutter/material.dart';
import 'package:flutter_lectur2_part2/components/list_item.dart';
import 'package:flutter_lectur2_part2/screens/about.dart';
import 'package:flutter_lectur2_part2/screens/shop.dart';

import '../components/layout.dart';

class Home extends StatefulWidget {

  static String routName = "/";
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;

  void _onIncrement(){
    setState(() {
      count++;
    });
    print('Count is $count');
  }

  @override
  Widget build(BuildContext context) {
    return Layout(

      title: 'Home',

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
          onTap: _onIncrement,
          child: Text("Count is $count"),
        ),
          //const ListItem(content: "Content 1"),
          //const ListItem(content: "Content 2"),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(About.routName);
              } ,
              child: const Text("About")
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Shop.routName);
              } ,
              child: const Text("Shop")
          ),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: _onIncrement,
      ),
    );
  }
}
