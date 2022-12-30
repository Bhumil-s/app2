import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class fourth extends StatefulWidget {
  const fourth({super.key});

  @override
  State<fourth> createState() => _fourthState();
}
Widget th(String x,String y){
  return
  Row(
    
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$x"),
          Text('$y')
        ],
      ),
      SizedBox(width: 130,),      Expanded(
        child: Column(
          
          children: [
            Row(
              children: [
                SizedBox(
                  height: 40,
                  width: 70,
                  
                  child: Card(
                    
                    child: 
                    
                    Center(child: Text("\$ 7.57")),color: Colors.white,
                    
                  ),
                ),
                SizedBox(width: 10,),
              Icon(Icons.shopping_basket_outlined,color: Colors.red,)  
              ],
            ),
            
          ],
        ),
      )
    ],
  )
  ;

}

class _fourthState extends State<fourth> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            "Order",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: 
      Column(
        children: [
          th("2022-12-12","INV -2022120256731"),
          Divider(thickness: 1.2,),
          th("2022-09-09","INV -2022120256731"),
          Divider(thickness: 1.2,),
          th("2022-12-12","INV -2022120256731"),
          Divider(thickness: 1.2,),
          th("2022-09-09","INV -2022120256731"),
          th("2022-12-12","INV -2022120256731"),
          Divider(thickness: 1.2,),
          th("2022-09-09","INV -2022120256731"),
          Divider(thickness: 1.2,),
          th("2022-12-12","INV -2022120256731"),
          Divider(thickness: 1.2,),
          th("2022-09-09","INV -2022120256731")
        ],
      )
    );;
  }
}