import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:cached_network_image/cached_network_image.dart';

// ignore: must_be_immutable
class Preloader extends StatelessWidget {
  Preloader({super.key, required this.imageurl, required this.height, required this.width});
  String imageurl;
  double height;
  double width;
  

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      placeholder: (context, url) => Image.asset('assets/preloader.gif'),
      imageUrl: imageurl,
      width: MediaQuery.of(context).size.width * width,
      fit: BoxFit.cover,
      height: MediaQuery.of(context).size.height*height,
    );
  }
}