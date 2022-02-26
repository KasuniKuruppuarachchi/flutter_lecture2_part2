import 'package:flutter/material.dart';
import 'package:flutter_lectur2_part2/components/color_manager.dart';
import 'package:flutter_lectur2_part2/screens/about.dart';
import 'package:flutter_lectur2_part2/screens/home.dart';
import 'package:flutter_lectur2_part2/screens/shop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    const Color primaryColor = Colors.yellow;

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Home.routName,
      routes: {
          Home.routName: (context) => const Home(),
          About.routName: (context) => const About(),
          Shop.routName: (context) => const Shop(),
      },
    );
  }
}

