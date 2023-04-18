import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../models/iteam.dart';

class Udemy extends StatefulWidget {
  const Udemy({Key? key}) : super(key: key);

  final List<Iteam> course_list = const
  [
    Iteam(
      image: 'assets/images/course1.jpg',
      title: 'Flutter Course',
      author: 'Aiman Esmaiel',
      number_rate: 5000,
      rate: 5,
      price: 2000,
    ),
    Iteam(
      image: 'assets/images/course2.jpg',
      title: 'Flutter Course',
      author: 'Aiman Esmaiel',
      number_rate: 5000,
      rate: 5,
      price: 2000,
    ),
    Iteam(
      image: 'assets/images/course2.jpg',
      title: 'Flutter Course',
      author: 'Aiman Esmaiel',
      number_rate: 5000,
      rate: 5,
      price: 2000,
    ),
    Iteam(
      image: 'assets/images/course4.jpg',
      title: 'Flutter Course',
      author: 'Aiman Esmaiel',
      number_rate: 5000,
      rate: 5,
      price: 2000,
    ),
    Iteam(
      image: 'assets/images/course5.jpg',
      title: 'Flutter Course',
      author: 'Aiman Esmaiel',
      number_rate: 5000,
      rate: 5,
      price: 2000,
    ),
  ];

  @override
  State<Udemy> createState() => _UdemyState();
}

class _UdemyState extends State<Udemy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(
               "Top course in \n Development",
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 20.0,
               ),
             ),

           ],
         ),

         Expanded(child: ListView.builder(
           itemCount: course_list.length,
           scrollDirection: Axis.horizontal,
           itemBuilder: (BuildContext context, int index) {
             return  CourseIteam(iteam: course_list[0],);
           },
         ),),

         Center(
           child: Container(
             height: 200,
             width: 400,
             decoration: BoxDecoration(
               border: Border.all(width: 1, color: Colors.white),

             ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Spacer(),
                 Text('Top Companies trust \n Udemy',
                   style: TextStyle(
                       fontFamily: 'OpenSans',
                       color: Colors.white,
                       fontSize: 25.0,
                       fontWeight: FontWeight.bold
                   ),),
                 Spacer(),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text('box',style: TextStyle(color: Colors.white),),
                     SizedBox(
                       width: 20,
                     ),
                     Text('Nasdaq',style: TextStyle(color: Colors.white),),
                     SizedBox(
                       width: 20,
                     ),
                     Text('Nasdaq',style: TextStyle(color: Colors.white),),
                   ],
                 ),
                 Spacer(),
                 Text('Try Udemy Business',
                   style: TextStyle(
                     color: Color(0xff994885),
                     fontSize: 18.0,
                   ),),
                 Spacer(),
               ],
             ),
           ),
         ),
       ],
     )

    );
  }
}
