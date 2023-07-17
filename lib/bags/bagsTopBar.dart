import 'package:flutter/material.dart';

class BagsTopBar extends StatefulWidget {
  const BagsTopBar({super.key});

  @override
  State<BagsTopBar> createState() => _BagsTopBarState();
}

class _BagsTopBarState extends State<BagsTopBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: const Icon(
              Icons.arrow_back,
              size: 30,
            ),
            onTap: () => setState(() {
              Navigator.pop(context);
            }),
          ),
          const Text(
            "BAGS",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const Text("      ")
        ],
      ),
    );
  }
}
