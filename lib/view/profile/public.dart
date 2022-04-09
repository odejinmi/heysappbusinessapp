import 'package:flutter/material.dart';

class Public extends StatelessWidget {
  final int pos;
  const Public({Key? key, this.pos=1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/img/${pos == 1?'globe':pos==2?'follower':'private'}.png",
            height: 20,
          ),
          SizedBox(width: 10,),
          Text("${pos == 1?'Public':pos==2?'Followers':'Private'}",
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}
