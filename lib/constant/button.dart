import 'package:flutter/material.dart';

import 'constant.dart';

class Button extends StatelessWidget {
  final Function? press;
  final String? name;
  final Widget loader;
  final Color textcolor, buttoncolor;
  final bool fullwidth, isloading;
  const Button(
      {Key? key,
      this.press,
      this.name,
      this.textcolor = primarycolour,
      this.fullwidth = false,
        this.isloading = false,
        this.loader = loadingWidget2,
      this.buttoncolor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isloading) {
          return;
        }
        press!();
      },
      child: Container(
        alignment: Alignment.center,
        margin: fullwidth ? null : const EdgeInsets.symmetric(horizontal: 50.0),
        decoration: BoxDecoration(
          color: buttoncolor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: isloading?loader:Text(
          name.toString(),
          style: TextStyle(
              color: textcolor,
              // fontFamily: 'Gotham',
              fontWeight: FontWeight.w700,
              fontSize: 15.0),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
