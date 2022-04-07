import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Businesscategory extends StatelessWidget {
  const Businesscategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Row(
                children: [
                  GestureDetector(
                    child: const Icon(
                        Icons.arrow_back_ios
                    ),
                    onTap: (){
                      Get.back();
                    },
                  ),
                  const Spacer(),
                  Text("Business Category"),
                  Spacer()
                ],
              ),
              SizedBox(height: 40,),
              item("Finance & Pay Bill"),
              item("Food & Drink"),
              item("Health and Beuty"),
              item("Health and Beuty"),
              item("Shopping"),
              item("Recreation"),
              item("Home Services"),
              item("Personal Services"),
              item("Tourism & Accommodation"),
              item("Public & Social Services"),
              item("Fashion"),
              item("Electronics and phones"),
              item("Gas station"),
            ],
          ),
        ),
      ),
    );
  }

  Widget item(String value){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Text(value,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          Spacer(),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }

}
