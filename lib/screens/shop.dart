import 'package:flutter/material.dart';
import 'package:flutter_lectur2_part2/components/layout.dart';

class Shop extends StatefulWidget {

  static String routName = "/shop";
  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  int qty = 0;

  void onItemAdd(){
    setState(() {
      qty++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Shop"
        ),
        actions: [
          Chip(label: Text("$qty"))
        ],
      ),
      body: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              "https://static-01.daraz.lk/p/8278b910a7e55ec43f01011a39d29c46.jpg",
              width: 150,
            ),
            const Text("Item 1"),
            IconButton(
                onPressed: onItemAdd,
                icon: const Icon(
                    Icons.add_shopping_cart
                )
            )
          ],
        ),
      ),
    );
  }
}
