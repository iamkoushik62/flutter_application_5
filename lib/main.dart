import 'package:flutter/material.dart';
import 'package:flutter_application_5/pages/CartPage.dart';
import 'package:flutter_application_5/pages/HomePage.dart';
import 'package:flutter_application_5/pages/ItemPage.dart';

void main() =>
  runApp( MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/" :(context) => HomePage(),
        "/cartPage" : (context) => const CartPage(),
       "/back" :(context) => HomePage(),
         "/itemPage":(context) => ItemPage(),
       
        
      },
    );
  }
}




