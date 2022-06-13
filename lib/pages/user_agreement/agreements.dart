import 'package:betafitness/core.dart';
import 'package:betafitness/coregs.dart';

class Agreements extends StatelessWidget {
  const Agreements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kThirdColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 310.w,
                alignment: Alignment.center,
                height: 40.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: ColorConstants.kSecondColor,
                    boxShadow: [
                      BoxShadow(
                          color: ColorConstants.kFirstColor.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("USER AGREEMENT",style: TextStyle(fontSize: 18.sp),),
                ),
              ),

              Container(
                width: 310.w,
                height: 570.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: ColorConstants.kSecondColor,
                    boxShadow: [
                      BoxShadow(
                          color: ColorConstants.kFirstColor.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia, felis eu volutpat dapibus, velit ante congue risus, at pulvinar mi nulla eget lectus. Pellentesque sollicitudin velit vitae accumsan malesuada. Nullam dignissim non ante ut aliquam. Pellentesque placerat ante dui, ac euismod massa pellentesque et. Nam at finibus enim. Quisque dignissim volutpat rhoncus. Duis a posuere lacus, eget bibendum neque. Sed commodo varius consequat. Phasellus eu hendrerit leo, quis tempor nibh. Aenean lacinia, augue ac aliquet placerat, sem nunc blandit nisi, at congue urna eros sed lacus. Donec cursus leo et turpis finibus, ut venenatis urna volutpat. Praesent suscipit dolor id elit feugiat, vitae sodales ligula pellentesque.",style: TextStyle(fontSize: 18.sp),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
