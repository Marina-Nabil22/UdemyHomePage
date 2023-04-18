import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  Category extends StatelessWidget {
  final title;

  Category({required this.title});

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding:  const EdgeInsets.only(top: 5.0,right: 5.0),
        child: Container(

          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff6C6A61),width: 2),
              borderRadius: BorderRadius.circular(30)
            //   color:Color(0xffEDE4E3),
          ),
          child: Text(title,style: const TextStyle( color: CupertinoColors.white,fontSize: 16,fontWeight: FontWeight.bold),),
        ),
      );
  }
}

