import 'package:flutter/material.dart';
import 'package:flutter_flowerimages/second.dart';

class Aaaa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
//            height: 80,
//            width: 80,
        child: Center(
          child: GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>(Next())));
              },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xffffd89b)
              ),
              height: 50,
              width: 200,
              child: Center(child: Text("Click to see the flowers")),
            ),
          ),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xffffd89b),Color(0xff19547b)])
        ),
      ),
    );
  }
}
