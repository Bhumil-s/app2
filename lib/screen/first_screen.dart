// ignore_for_file: prefer_const_constructors, duplicate_ignore, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unused_import, camel_case_types, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';


class first extends StatefulWidget {
  first({super.key});

  @override
  State<first> createState() => _firstState();
}

final List img = [
  'assets/catagory 3.png',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCBBNc3Q0Q9iBXSzFl0gh1PLLjzA-3R6-mYA&usqp=CAU',
  'https://img.traveltriangle.com/blog/wp-content/uploads/2021/12/Best-Non-Veg-Restaurants-in-Mumbai1.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDpcdR7nPN8u0nkYRudRieKIeLtL3Mx3471g&usqp=CAU',
 ' https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSFGzwtG0CcoiUYMU5p492K3QnGFUbhNSEng&usqp=CAU'
];

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Image(
            height: double.infinity,
            width: 350,
            image: AssetImage('assets/karmalogo.png'),
            fit: BoxFit.fitWidth,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'Karma louge',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
        ),
        
        body: SingleChildScrollView(
          child: Column(
            
            children: [
              
              Container(
              child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Search',
                     label: Text('Search'),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (String value) {
                    
                    }),
              ),
              ),
               Divider(color: Colors.black),
         
            Container(
              height: 180,
              width: 500,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return SizedBox(
                    child: Card(
                      child: Image.network(img[index]),
                      elevation: 10,
                    ),
                  );
                },
              ),
            ),
            Divider(color: Colors.black),
            SizedBox(
              height: 10,
            ),
            rows('On Sale','On Sale','Starter','Samosa, Panner, pakoda...',
                'assets/catagory 1.gif','assets/catagory2.png'),
            rows('Beverages','Lassi, Tea, Ice...','Wine','wine','assets/catagory 3.png','assets/catagory 4.png'),
            rows('On Sale','On Sale','Starter','Samosa, Panner, pakoda...',
                'assets/catagory 5.png','assets/catagory 6.png'),
            
            
            
             
          ]
          
          ),
        ));
  }

  Row rows(String text1 , String text2 ,String text3,String text4
  ,String image1,String image2,) {
    return Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 230,
                      width: 230,
                      child: Image(image: AssetImage(image1),fit: BoxFit.fill,),
                    ),
                     Text('$text1'),
                Text('$text2'),
                  ],
                ),
              ),
              
              
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 230,
                      width: 230,
                      child: Image(image: AssetImage(image2),fit: BoxFit.fill,),
                    ),
                     Text('$text3',),
                Text('$text4'),
                  ],
                ),
              ),
             
            ],
          );
  }
}
