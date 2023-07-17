import 'package:flutter/material.dart';

class NavigatorChip extends StatelessWidget {
  const NavigatorChip({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/home');
      },
      child: const Text(
        "Check Our Popular Drinks",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }
}
