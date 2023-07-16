
import 'package:flutter/material.dart';
import 'bottomBar.dart';
import 'splash_screen/splashscree.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.green
        //colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 32, 238, 39)),
        //useMaterial3: true,
      ),
      home: const SplashScreen(),
      routes: {
        '/home': (context) => const BottomBar(),
        //'/Coffee': (context) => const Coffee(),
        
        
      },
    );
  }
}
