import 'package:flutter/material.dart';
import 'package:flutter_lectur2_part2/components/layout.dart';

class About extends StatelessWidget {

  static String routName = "/about";
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Layout(
      title: "About",
      body: Column(
        children: [
          const Text("About"),
          OutlinedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Home")
          )
        ],
      ),

    );
  }
}
