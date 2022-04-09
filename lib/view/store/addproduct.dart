import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heysappbusiness/view/dashboard/bottomnavigator.dart';

class Addproduct extends StatelessWidget {
  const Addproduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              child: const Icon(Icons.arrow_back_ios,color: Colors.black,),
              onTap: (){
                Get.back();
              },
            ),
            const Spacer(),
            const Text("Add Product",
              style: TextStyle(color: Colors.black,
                  fontSize: 15, fontWeight: FontWeight.w500
              ),
            ),
            const Spacer(),
          ],
        ),
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Text("Add Product Imahes"),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    height: 85, width: 85,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/img/dottedbox.png",),
                        fit: BoxFit.cover
                      )
                    ),
                    child: Image.asset("assets/img/granovaandberry.png",
                      height: 50, width: 50,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    height: 85, width: 85,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/img/dottedbox.png"),
                        fit: BoxFit.cover
                      )
                    ),
                    child: Image.asset("assets/img/granovaandberry.png"),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    height: 85, width: 85,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/img/dottedbox.png"),
                        fit: BoxFit.cover
                      )
                    ),
                    child: Image.asset("assets/img/granovaandberry.png"),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    height: 85, width: 85,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/img/dottedbox.png"),
                        fit: BoxFit.cover
                      )
                    ),
                    child: Text("+"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}
