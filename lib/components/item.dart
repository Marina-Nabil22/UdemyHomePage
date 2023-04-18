import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final title;

  Item({required this.title});

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Container(

          padding: const EdgeInsets.all(14.0),
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xff6C6A61),width: 3),

              borderRadius: BorderRadius.circular(30)
            //   color:Color(0xffEDE4E3),
          ),
          child: Text(title,style: TextStyle( color: CupertinoColors.white,fontSize: 23,fontWeight: FontWeight.bold),),
        ),
      );
  }
}

