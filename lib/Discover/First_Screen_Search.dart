// ignore: file_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Searchfield extends StatelessWidget {
  Searchfield({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.9,
      height: 60,
      child: TextField(
        
        onTapOutside: (event) =>
            FocusScope.of(context).requestFocus(FocusNode()),
        cursorWidth: 2,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.black),
              ),
          hintText: text,
          hintStyle: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.4)),
          prefixIcon: const Icon(
            Icons.search,
            color: Color.fromRGBO(0, 0, 0, 0.4),
          ),
        ),
      ),
    );
  }
}
