import 'dart:math';

import 'package:betafitness/core.dart';
import 'package:betafitness/coregs.dart';

class InviteFriend extends StatelessWidget {
  InviteFriend({Key? key}) : super(key: key);
  Random rnd = new Random();
  int min = 1000;
  int max = 9999;
  @override
  Widget build(BuildContext context) {
    Random rnd = new Random();
    var r = min + rnd.nextInt(max - min);
  return Scaffold(
    backgroundColor: ColorConstants.kThirdColor,
      body: Center(
        child: Text(r.toString(),style: TextStyle(fontSize: 70,color: ColorConstants.kFirstColor),),
      ),
    );
  }
}
