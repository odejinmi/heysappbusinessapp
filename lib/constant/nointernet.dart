import 'package:flutter/material.dart';

import 'constant.dart';

class Nointernet extends StatefulWidget {
  const Nointernet({Key? key}) : super(key: key);

  @override
  _NointernetState createState() => _NointernetState();
}

class _NointernetState extends State<Nointernet> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Spacer(),
          Image.asset(
            "assets/img/nointernet.gif",
            // height: 120,
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Unable to connect to network",
            style: TextStyle(
                 fontSize: 16, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
