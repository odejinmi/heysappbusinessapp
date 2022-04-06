import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:flutter_native_contact_picker/flutter_native_contact_picker.dart';
// import 'package:permission_handler/permission_handler.dart';

const primarycolour = Color(0xff124CC2);
Color yellow = const Color(0xffFFCE00),red = const Color(0xffEF565C);
String card = "heysap";
String nairasymbol = "₦";
String type = "";
const edittextbodercolour = 0xFF757575;
bool equal = true;
double marginTopHeader = 50.0;

/// Hides the onscreen keyboard
void hideKeyboard(BuildContext context) {
  // SystemChannels.textInput.invokeMethod('TextInput.hide');
  FocusScope.of(context).requestFocus(FocusNode());
}

var lists = [];

// String Baseurl = "VqfDe/mptUyDA5UGTVIxTW39eTXeqDBIKx8KiZlKmDs=";
// String Base = "VqfDe/mptUyDA5UGTVIxTW39eTXeqDAgUn8shZVGlDc=";
//Test
String Baseurl =
    "VqfDe/mptUyKFoVbTUB2Smn9Z3LZoDEcKAJE/v8g8E7OSqzQ14KFyo0/OChGDptR";
// String Base =
//     "VqfDe/mptUyDEZVcXFEhF2n5Y3PHq2paMxlW+LIs8lOAK9rxu+Ln6+xXGEY5aLtf";

// Future<String?> contactpicked() async {
//   if (await Permission.contacts.request().isGranted) {
//     final FlutterContactPicker _contactPicker = new FlutterContactPicker();
//     Contact? contact = await _contactPicker.selectContact();
//     var array = contact!.phoneNumbers ?? "081";
//     return array
//         .toString()
//         .replaceAll(" ", "")
//         .replaceAll("[", "")
//         .replaceAll("]", "")
//         .replaceAll("+234", "0")
//         .replaceAll("234", "0");
//   } else {
//     requestPermission();
//   }
// }
//
// requestPermission() async {
//   Map<Permission, PermissionStatus> statuses =
//       await [Permission.contacts].request();
//
//   final info = statuses[Permission.storage].toString();
//   // print("permission " + info);
//   // _toastInfo(info);
// }

const loadingWidget = SpinKitThreeBounce(
  color: Colors.white,
  size: 30.0,
);
const loadingWidget2 = SpinKitThreeBounce(
  color: Color(0xff3325C3),
  size: 30.0,
);

String email = "";
String phonenumber= "";
String otpcode = "";
String username = "";
String password = "";
String referrer = "";
String interest = "";
String dob = "";
String pin = "";
bool isemail = true;

String accountnumber(number){
  String value ="****"+number.toString().substring(6,10);
  return value;
}