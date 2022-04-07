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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 155,),
            Image.asset(imagePath!,
              height: 86,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 60),
              child: const Text(
                "Welcome Back, You’ve Been Missed!",
                style: TextStyle(
                    fontWeight: FontWeight.w300, fontSize: 14),
                // textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30,),
            Image.asset("assets/img/newfaceid.png",
              height: 27.34,
            ),
          ],
        )
    );
  }
}
