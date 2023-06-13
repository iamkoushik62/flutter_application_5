import 'dart:io';

import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        for(int i = 1; i< 8; i++)
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("Images/$i.png",
            height: 70,
            width: 70,),
            Text("Smart Watch",style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              
              
            ),)
          ],
        ),)
      ]),
    );
  }
}