import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/Widgets/CategoriesWidget.dart';
import 'package:flutter_application_5/Widgets/HomeAppBar.dart';
import 'package:flutter_application_5/Widgets/ItemWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView(children: [
        HomeAppBar(),
        Container(
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Color.fromARGB(0, 0, 0, 0),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(35),
            topRight: Radius.circular(35))
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(vertical: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      width: 300,
                      height: 50,
                      child: TextFormField(decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Here...."

                      )),

                    ),
                    Spacer(),
                    Icon(Icons.camera_alt,
                    size: 25,
                    color: Color(0xFF4C53A5),),
                    
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                child: Text("Catagories",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4C53A5),

                ),),
              ),
              CategoriesWidget(),
              

              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                child: Text("Best Selling",style: TextStyle(
                  fontSize: 25,fontWeight: FontWeight.bold,
                  color: Colors.blueAccent
                ),),
              ),
              ItemWidget(),
            ],
          ),
        )
      ],),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {},
        height: 70,
        color: Color(0xFF4C53A5),
        items: [
          Icon(Icons.home,color: Colors.white,size: 30,),
          Icon(CupertinoIcons.cart,color: Colors.white,size: 30,),
          Icon(Icons.list,color: Colors.white,size: 30,),
        ],
      ),
    );
  }
}