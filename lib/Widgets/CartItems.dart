import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for(int i = 1;i<4;i++)
        Container(
          height: 110,
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Radio(value: "", groupValue: "", onChanged: (index){}),
            Container(
              height: 70,
              width: 70,
              child: Image.asset('Images/$i.png'),
              margin: EdgeInsets.only(right: 15),),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Boat Watch",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,
                  color: Colors.blue),),
                  Text("\$55",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blue),),
                ],
              ),),
              Padding(padding: EdgeInsets.symmetric(vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.delete,
                  color: Colors.black,
                  ),
                  Row(children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                       boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 10,
                        )
                       ]
                      ),
                      child: Icon(CupertinoIcons.plus,size: 18,),
                    ),
                    Container(
                 
                 margin: EdgeInsets.symmetric(horizontal: 10),
                 child: Text('01',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),   ),
                     Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                       boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 10,
                        )
                       ]
                      ),
                      child: Icon(CupertinoIcons.minus,size: 18,),
                    )
                  ],)
                ],
              ),)
              
            ],
          ),
        )
      ],
    );
  }
}