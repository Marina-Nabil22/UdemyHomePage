import 'package:flutter/material.dart';

class ListViewItems extends StatelessWidget {
  final String listName;
  final String department;
  final List list;
  final double height;
  final double fontSize;
  const ListViewItems({super.key, required this.listName,required this.list,required this.height,required this.department,required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              listName,
              style: TextStyle(
                color: Colors.white,
                fontSize: fontSize,
                  fontWeight: FontWeight.w600
              ),
            ),
            Text(
              department,
              style: TextStyle(
                color: Colors.purple.shade200,
                fontSize: fontSize,
                fontWeight: FontWeight.w600
              ),
            ),

          ],
        ),

        SizedBox(
          height: height,
          child: Expanded(child: ListView.builder(
            itemCount: list.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return  list[index];
            },
          ),),
        ),

      ],
    );
  }
}
