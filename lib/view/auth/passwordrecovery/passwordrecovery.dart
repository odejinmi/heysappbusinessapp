import 'package:flutter/material.dart';

import 'textpart.dart';
import 'imagepart.dart';

class Passwordrecovery extends StatelessWidget {
  const Passwordrecovery({Key? key}) : super(key: key);
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
                 Expanded(
                  child: Imagepart(),
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
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      // height: size.height - 400,
                      child:  Textpart(),
                    )),)
              ],
            )
            :Column(
              children: <Widget>[
                Imagepart(),
                Expanded(child: Container()),
                Card(
                    margin: const EdgeInsets.only(top: 30.0),
                    clipBehavior: Clip.antiAlias,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      // height: size.height - 400,
                      child: Textpart(),
                    )
                ),
              ],
            ),
      ),
    );
  }
}
