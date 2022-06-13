import 'package:betafitness/core.dart';
import 'package:betafitness/coregs.dart';
import 'package:flutter/material.dart';

class UserAgreement extends StatelessWidget {
  const UserAgreement({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kThirdColor,
      body: Center(
        child: Container(
            width: 300.w,
            height: 600.h,
            child: Column(
              children: [
                InkWell(
                  onTap: ()=>Get.toNamed(Routes.AGREEMENT),
                  child: Container(
                    width: 300.w,
                      alignment: Alignment.centerLeft,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: ColorConstants.kSecondColor,
                        border: Border.all(color: ColorConstants.kFirstColor,width: 2.w)

                      ),
                      child: Text("  User Agreement",style: TextStyle(fontSize: 20),)),
                ),
                Container(height: 10.h,),
                Container(
                    width:300.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: ColorConstants.kSecondColor,
                        border: Border.all(color: ColorConstants.kFirstColor,width: 2.w)


                    ),
                    alignment: Alignment.centerLeft,
                    child: Text("  Terms of Condition",style: TextStyle(fontSize: 20),)),

              ],
            )),
      ),

    );
  }
}
