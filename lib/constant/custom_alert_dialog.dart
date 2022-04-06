import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final Color? bgColor;
  final String? title;
  final String? message;
  final String? positiveBtnText;
  final String? negativeBtnText;
  final Function? onPostivePressed;
  final Function? onNegativePressed;
  final double? circularBorderRadius;

  CustomAlertDialog({
    this.title,
    this.message,
    this.circularBorderRadius = 15.0,
    this.bgColor = Colors.white,
    this.positiveBtnText,
    this.negativeBtnText,
    this.onPostivePressed,
    this.onNegativePressed,
  })  : assert(bgColor != null),
        assert(circularBorderRadius != null);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title?? ""),
      content: Text(message?? ""),
      backgroundColor: bgColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(circularBorderRadius!)),
      actions: <Widget>[
        Visibility(
          visible: negativeBtnText != null ? true : false,
          child: FlatButton(
            child: Text(negativeBtnText?? ""),
            textColor: Theme.of(context).accentColor,
            onPressed: () {
              Navigator.of(context).pop();
              if (onNegativePressed != null) {
                onNegativePressed!();
              }
            },
          ),
        ),
        Visibility(
          visible: positiveBtnText != null ? true : false,
          child: FlatButton(
            child: Text(positiveBtnText??""),
            textColor: Theme.of(context).accentColor,
            onPressed: () {
              if (onPostivePressed != null) {
                onPostivePressed!();
              }
            },
          ),
        )
      ],
    );
  }
}

CustomAlertDialogloader(
    {BuildContext? context,
    String? title,
    String? message,
    bool disable = true,
    String? negativeBtnText,
    String? positiveBtnText,
    Function? onPostivePressed,
    Function? onNegativePressed}) {
  var dialog = CustomAlertDialog(
      title: title,
      message: message,
      onPostivePressed: onPostivePressed,
      positiveBtnText: positiveBtnText,
      onNegativePressed: onNegativePressed,
      negativeBtnText: negativeBtnText);
  showDialog(
      context: context!,
      barrierDismissible: disable,
      builder: (BuildContext context) => dialog);
}
