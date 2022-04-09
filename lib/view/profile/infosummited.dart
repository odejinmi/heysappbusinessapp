import 'package:flutter/material.dart';

import '../../constant/constant.dart';
import 'summited.dart';


class Infosummited extends StatelessWidget {
  const Infosummited({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: const Icon(Icons.arrow_back_ios,
              color: primarycolour,)
            ),
            const Spacer(),
            const Text("Personal Information",
              style: TextStyle(color: primarycolour),
            ),
            const Spacer(flex: 2,),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 100,),
          Summited(),
        ],
      ),
    );
  }
}
