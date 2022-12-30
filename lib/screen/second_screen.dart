import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/screen/first_screen.dart';

import 'package:flutterforbeginners2/screens/navbar.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';

class second extends StatefulWidget {
  second({Key? key}) : super(key: key);

  @override
  _secondState createState() => _secondState();
}

class _secondState extends State<second> {
  MyConfig _myconfig = MyConfig();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        elevation: _myconfig.myElevation,
        leading: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => bottom(),));
          },
          child: Image.asset(
            "assets/back.png",
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text(
            "Wishlist",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: 
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 100,
                width: 70,
                child: Image(image: AssetImage("assets/catagory 5.png"))),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Taj Mahal",
                  style: TextStyle(fontSize: 20, color: Colors.amber),
                ),
                 SizedBox(height: 5,),
                Text(
                  "Taj Mahal",
                  style: TextStyle(
                      fontSize: 10, color: Color.fromARGB(255, 63, 62, 56)),
                ),
                 SizedBox(height: 5,),
                Text(
                  "\$ 7.00",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                 SizedBox(height: 5,),
                Row(
                  children: [
                    Text(
                      '\$10.00  ',
                      style: TextStyle(
                          fontSize: 10,
                          decoration: TextDecoration.lineThrough,
                          color: Color.fromARGB(255, 93, 91, 80)),
                    ),
                     SizedBox(height: 5,),
                    Text(
                      "SAVE \$3.00 (30.00)%",
                      style: TextStyle(
                          fontSize: 10, color: Color.fromARGB(255, 93, 91, 80)),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 90,
            ),
            SizedBox(
                height: 30,
                width: 30,
                child: Image(
                  image: AssetImage("assets/addbrn.png"),
                ))
          ],
        ),
     ),
);
}
}