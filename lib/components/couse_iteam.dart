import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/iteam.dart';

class CourseIteam extends StatelessWidget {
  const CourseIteam({Key? key,required this.iteam }) : super(key: key) ;

  final Iteam iteam;

  @override
  Widget build( context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius:
                      BorderRadius.circular(10.0),
                      child: Container(
                        height: 120.0,
                        width: 200.0,
                        child: Image.asset(iteam.image!),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 10.0),
                    child: SizedBox(
                      width: 200.0,
                      child: Text( iteam.title!,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 5.0),
                    child: Text(
                      iteam.author!,
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 5.0),
                    child: Row(
                      children: [
                        Text( iteam.rate.toString(),
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 14.0,
                          ),
                        ),

                        const Icon(
                          Icons.star,
                          color: Color(0xffECEB98),
                          size: 18.0,
                        ),
                        const Icon(
                          Icons.star,
                          color: Color(0xffECEB98),
                          size: 18.0,
                        ),
                        const Icon(
                          Icons.star,
                          color: Color(0xffECEB98),
                          size: 18.0,
                        ),
                        const Icon(
                          Icons.star,
                          color: Color(0xffECEB98),
                          size: 18.0,
                        ),
                        const Icon(
                          Icons.star,
                          color: Color(0xffECEB98),
                          size: 18.0,
                        ),

                        Text( iteam.number_rate.toString(),
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 14.0,
                          ),
                        ),



                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 5.0),
                    child: Row(
                      children:  [
                        Text(
                          'EGP',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(
                          width: 7.0,
                        ),
                        Text(
                          iteam.price.toString() ,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            decoration:
                            TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 10.0),
                    child: SizedBox(
                      height: 30.0,
                      width: 100.0,
                      child: Container(
                        child: Center(
                          child: Text(
                            "Best Seller",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xffECEB98),
                          borderRadius:
                          BorderRadius.circular(4.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]
      ),
    );
  }
}