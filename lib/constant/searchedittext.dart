import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../view/searchhistory.dart';


class Searchedittext extends StatelessWidget {
   Searchedittext({Key? key, this.originList, this.notification = true,
     this.handleList, this.hint='Search'}) : super(key: key);
   List? originList = [];
   // List<ContactInfo>? originList = [];
   ValueChanged<List>? handleList;
   String hint;
   bool notification;
  void _search(String text) {
    if (text.isEmpty) {
      handleList!(originList!);
    } else {
      List list = originList!.where((v) {
      // List<ContactInfo> list = originList!.where((v) {
        return v.name.toLowerCase().contains(text.toLowerCase());
      }).toList();
      handleList!(list);
    }
  }
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromARGB(255, 225, 226, 230), width: 1.3),
          // color: const Color.fromARGB(255, 239, 240, 244),
          borderRadius: BorderRadius.circular(25)),
      child: TextFormField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          hintText: "find friends or businesses",
          border: InputBorder.none,
          fillColor: const Color(0xffF4F5F7),
          hintStyle: GoogleFonts.dmSans(
            fontWeight: FontWeight.w400,
            fontSize: 15,
          ),
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width: 30,),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => Searchhistory()));
                },
                  child:
                  Icon(Icons.search),
              ),
              SizedBox(width: 30,),
            ],
          ),
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                  onTap: (){
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (_) => const Myqr()));
                  },
                  child: Image.asset("assets/img/Scan.png",height: 30,)
              ),
              SizedBox(width: 20,),
              GestureDetector(
                  onTap: (){
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (_) => const Myqr()));
                  },
                  child: Image.asset("assets/img/notificationnew.png",height: 30,)
              ),
              SizedBox(width: 20,),
            ],
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius:
            BorderRadius.all(Radius.circular(25.0)),
            borderSide: BorderSide(color: Color(0xffF4F5F7)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius:
            BorderRadius.all(Radius.circular(25.0)),
            borderSide: BorderSide(color: Color(0xffF4F5F7)),
          ),
          // errorBorder: OutlineInputBorder(
          //   borderRadius:
          //   BorderRadius.all(Radius.circular(15.0)),
          //   borderSide: BorderSide(color: Colors.white),
          // ),
          // focusedErrorBorder: OutlineInputBorder(
          //   borderRadius:
          //   BorderRadius.all(Radius.circular(15.0)),
          //   borderSide: BorderSide(color: Colors.white),
          // ),
        ),
        style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: const Color(0xffC1C7D0)),
        keyboardType: TextInputType.text,
        controller: textEditingController,
        onChanged: (value) {
          _search(value);
        },
        validator: (value) {
          if (value != null) {
            return "This field can't be empty";
          }
          return null;
        },
      ),
    );
  }
}
