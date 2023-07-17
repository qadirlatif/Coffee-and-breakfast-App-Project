import 'package:coffee_breakfast_app/Discover/body.dart';
import 'package:coffee_breakfast_app/home.dart';
import 'package:flutter/material.dart';
import 'bottomBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const Home(),
      routes: {
        '/home': (context) => const BottomBar(),
      },
    );
  }
}
