import 'package:flutter/material.dart';
import 'package:flutter_application_5/Widgets/CartAppBar.dart';
import 'package:flutter_application_5/Widgets/CartBottomNavBar.dart';
import 'package:flutter_application_5/Widgets/CartItems.dart';


class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              )
            ),
            child: Column(
              children: [
                CartItems(),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF4C53A5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(Icons.add,color: Colors.white,),
                      ),
                      Padding(padding: 
                      EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Add Coupon Code",style: TextStyle(color: Color(0xFF4C53A5),fontWeight: FontWeight.bold,fontSize: 16),),)
                    ],
                  ),
                )
              ],
            ),
            
            

          )
        ],
      ),
      bottomNavigationBar: CartBottomNavBar(),
      
    );
  }
}