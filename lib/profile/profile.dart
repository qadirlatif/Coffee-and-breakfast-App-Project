import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(
        width: MediaQuery.of(context).size.width*1,
        height: MediaQuery.of(context).size.height*1,
        child: Stack(
          children: [
            ClipRRect(
              child: Image.network('https://www.snixykitchen.com/wp-content/uploads/2020/02/Gluten-Free-Chocolate-Cookies-9-720x540.jpg',
              height: MediaQuery.of(context).size.height*0.6,
              width: MediaQuery.of(context).size.width*1,
              fit: BoxFit.cover,),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(223, 220, 220, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)
                  )
                ),
                height: MediaQuery.of(context).size.height*0.5,
                width: MediaQuery.of(context).size.width*1,
              child: Text("asdas"),
            ))
          ],
        ),

      )
    );
  }
}