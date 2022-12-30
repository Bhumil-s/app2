

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class third extends StatefulWidget {
  const third({super.key});

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {



  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        elevation: 10,
        leading: InkWell(
          onTap: () {},
          child: Image.asset(
            "assets/back.png",
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text(
            "Your Cart(0)",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: 
      Column(
        
        children: [
          SizedBox(height: 100,),
          Center(
            child: SizedBox(
              height: 250,
              width: 250,
              child: 
              Image.asset(
              "assets/catagory2.png",              
            ),
            ),
          ),
          Text("Your Cart is empty!",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20)
          ),
          SizedBox(height: 10,),
          Text("Add items ti it now",
            style: TextStyle(color: Colors.black54,fontSize: 15)
          ),
          SizedBox(height: 10,),
          ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFFBA00)),
                      onPressed: (() {}),
                      child: Text("Order Now")),
        ],
      ),
    )
    ;
  }
}