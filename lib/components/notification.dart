import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class NotificationItem extends StatelessWidget {
  const NotificationItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
return Container(
        color:  Colors.purple.shade300,
        padding: const EdgeInsets.only(top: 5,bottom: 5),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text('Future-ready skills on your schedule',
                style: TextStyle(color: Colors.white, fontSize: 14)),
            Icon(
              CupertinoIcons.multiply,
              color: Colors.white,
            )
          ],
        ),
    );
  }
}
