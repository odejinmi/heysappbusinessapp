import 'package:flutter/material.dart';

import 'textpart.dart';
import 'imagepart.dart';

class Resetpin extends StatelessWidget {
  const Resetpin({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage('assets/img/intro1.png'),
            ),
        ),
        height: size.height,
        child: size.width > 500
            ?Row(
              children: [
                const Expanded(
                  child: Imagepart(imagePath: "assets/img/app-ui-logo.png",),
                ),
                Expanded(child: Card(
                    margin: const EdgeInsets.only(top: 0.0),
                    clipBehavior: Clip.antiAlias,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(25)),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      height: size.height,
                      color: Colors.white,
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      // height: size.height - 400,
                      child:  Textpart(),
                    )),)
              ],
            )
            :Column(
              children: <Widget>[
                Expanded(child: Container()),
                const Imagepart(imagePath: "assets/img/app-ui-logo.png",),
                const SizedBox(height: 60,),
                Card(
                    margin: const EdgeInsets.only(top: 30.0),
                    clipBehavior: Clip.antiAlias,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      child: Textpart(),
                    )
                ),
              ],
            ),
      ),
    );
  }
}
