import 'package:flutter/material.dart';
import 'package:flutter_lectur2_part2/components/list_item.dart';
import 'package:flutter_lectur2_part2/screens/about.dart';
import 'package:flutter_lectur2_part2/screens/shop.dart';
import 'package:flutter_lectur2_part2/shop_provider.dart';
import 'package:provider/provider.dart';

import '../components/layout.dart';

class Home extends StatefulWidget {

  static String routName = "/home";
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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          Chip(
            label: Text("${Provider.of<ShopManager>(context).qty}"),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
          onTap: _onIncrement,
          child: Text("Count is $count"),
        ),
          Text("Cart Qty is : ${Provider.of<ShopManager>(context).qty}"),
          const ListItem(content: "Content 1"),
          const ListItem(content: "Content 2"),
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

// Provider
//It can actually handle a state, whatever inside an component
// So might you have cases for share between multiple components, in that case you will be needed to have either
// inherited widgets or inherited notifiers. So for that we use a library called "Provider" to remove the complexity.
