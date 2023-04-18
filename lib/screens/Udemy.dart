import 'package:flutter/material.dart';
 import 'package:udemyhomepage/components/item.dart';
import 'package:flutter/cupertino.dart';

class Udemy extends StatefulWidget {
  const Udemy({Key? key}) : super(key: key);
  @override
  State<Udemy> createState() => _UdemyState();
}

class _UdemyState extends State<Udemy> {
  int _currentIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0, top: 14),
            child: Text(
              'SIGN IN',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
        backgroundColor:Color(0xff1C1D1F) ,
     //  title: Text('SIGN IN',textAlign: TextAlign.right,style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      backgroundColor:Color(0xff1C1D1F) ,
      body:
      Container(
        child: Column(
          children: [
            Container(
              color: Color(0xff994885),
              height: 50,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Future-ready skills on your schedule',style:TextStyle(color: Colors.white,fontSize: 20)),
                  Icon(CupertinoIcons.multiply, color: Colors.white,)
                ],
              ),
            ),

      Container(
        child:      BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.star,),
              label: 'Featured',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.slow_motion_video_outlined),
              label: 'My learning',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Account',
            ),
          ],
            type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xff1C1D1F),
      unselectedItemColor: Color(0xff696969),
            selectedItemColor: Colors.white,
            iconSize: 40,
            onTap: onTabTapped,
            currentIndex: _currentIndex,


        ),

      ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Categories',style: TextStyle(color: Colors.white,fontSize: 43,fontWeight: FontWeight.bold),),
                Text('see all',style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),)

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Item(title: 'Development'),
              Item(title: 'IT & Software'),

            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                Item(title: 'Business'),
                Item(title: 'Finance & Accounting'),

              ],
            )
          ],

        ),
      )
    );
  }
}
