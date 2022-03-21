import 'package:flutter/cupertino.dart';

import 'package:betafitness/core.dart';

class HeaderReachText extends StatelessWidget {
  const HeaderReachText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: TextConstants.splashFirst,
        style: TextStyle(fontFamily: "Bebas", fontSize: 30, letterSpacing: 5),
        children: <TextSpan>[
          TextSpan(
            text: TextConstants.splashSecond,
            style: TextStyle(color: kFirstColor),
          )
        ],
      ),
    );
  }
}
