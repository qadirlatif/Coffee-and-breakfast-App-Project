import 'package:flutter/material.dart';

class IntroText extends StatelessWidget {
  const IntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 0.05,
          MediaQuery.of(context).size.height * 0.1,
          MediaQuery.of(context).size.width * 0.05,
          0),
      child: const Text(
        "The Coffee Club serves speciality coffee. fancy gifted cheese sandwiches, scratch cooking, craft ales, and cider",
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
