import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Imagepart extends StatelessWidget {
  final String? imagePath;
  const Imagepart({Key? key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Column(
          children: const [
            Text(
              "New passcode",
              style: TextStyle(
                  fontWeight: FontWeight.w700,  fontSize: 20),
            ),
            SizedBox(
              height: 60,
            ),
          ],
        )
    );
  }
}
