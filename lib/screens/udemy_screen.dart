import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udemyhomepage/components/footer.dart';
import 'package:udemyhomepage/components/list_View_items.dart';
import 'package:udemyhomepage/components/notification.dart';

import 'package:flutter/cupertino.dart';
import 'package:udemyhomepage/data/data.dart';

class UdemyScreen extends StatefulWidget {
  const UdemyScreen({Key? key}) : super(key: key);

  @override
  State<UdemyScreen> createState() => _UdemyScreenState();
}

class _UdemyScreenState extends State<UdemyScreen> {
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
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0, top: 14),
              child: Text(
                'SIGN IN',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],

          backgroundColor: const Color(0xff1C1D1F),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.star,
              ),
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
          backgroundColor: const Color(0xff1C1D1F),
          unselectedItemColor: const Color(0xff696969),
          selectedItemColor: Colors.white,
          iconSize: 30,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          onTap: onTabTapped,
          currentIndex: _currentIndex,
        ),
        backgroundColor: const Color(0xff1C1D1F),
        body:
        SingleChildScrollView(
          child: Column(
            children: [
              const NotificationItem(),
               Image.asset('assets/a.jpg',),//abhayaLibre
              const SizedBox(height: 10,),
              Text("Learning that fits",style: GoogleFonts.abhayaLibre(fontStyle: FontStyle.normal,fontSize: 45,color: Colors.white,fontWeight: FontWeight.bold)),
              Text("Skills for your present (and future)",style: GoogleFonts.openSans(fontStyle: FontStyle.normal,fontSize: 16,color: Colors.white.withOpacity(0.8),)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    const Text(
                      'Categories',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'see all',
                      style: TextStyle(
                          color: Colors.purple.shade100,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                          ),
                    )
                  ],
                ),
              ),
              ListViewItems(listName:'' ,department:'', fontSize:0,list: categoryList1,height: 50,),
              ListViewItems(listName: '',department: '',fontSize:0, list: categoryList2,height: 50,),
              const SizedBox(height: 30,),
              const ListViewItems(listName: 'Top courses in ',fontSize:25,department: 'Design', list: courseList,height: 300,),
              const ListViewItems(listName: 'Top courses in ',fontSize:25,department: 'Business', list: courseList2,height: 300,),
              const ListViewItems(listName: 'Top courses in ',fontSize:25,department: 'Development', list: courseList,height: 300,),
               const Footer(),





            ],
          ),
        ));
  }
}
