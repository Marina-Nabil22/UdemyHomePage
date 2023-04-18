import 'package:flutter/material.dart';

import '../models/item.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({Key? key,required this.item }) : super(key: key) ;

  final Item item;

  @override
  Widget build( context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius:
                    BorderRadius.circular(10.0),
                    child: SizedBox(
                      height: 120.0,
                      width: 200.0,
                      child: Image.asset(item.image!),
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 10.0),
                  child: SizedBox(
                    width: 200.0,
                    child: Text( item.title!,
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
                    item.author!,
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
                      Text( item.rate.toString(),
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

                      Text( item.rateNumber.toString(),
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
                      const Text(
                        'EGP',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                      const SizedBox(
                        width: 7.0,
                      ),
                      Text(
                        item.price.toString() ,
                        style: const TextStyle(
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
                      decoration: BoxDecoration(
                        color: const Color(0xffECEB98),
                        borderRadius:
                        BorderRadius.circular(4.0),
                      ),
                      child: const Center(
                        child: Text(
                          "Best Seller",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]
      ),
    );
  }
}