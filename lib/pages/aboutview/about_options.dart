import 'package:betafitness/coregs.dart';
import 'package:betafitness/utils/text_constants.dart';

import 'about_option_widget.dart';

class AboutOptions extends StatelessWidget {
  const AboutOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueBuilder<int?>(
      initialValue: 0,
      builder: (value, updateFn) => Row(
        children: [
          AboutOptionWidget(
            state: TextConstants.iamBeginner,
            detail: TextConstants.iamBeginnerDescription,
            enable: value == 0 ? true : false,
            onTap: () => updateFn(0),
          ),
          SizedBox(width: 20.w),
          AboutOptionWidget(
            state: TextConstants.iamExpert,
            detail: TextConstants.iamExpertDescription,
            enable: value == 1 ? true : false,
            onTap: () => updateFn(1),
          ),
        ],
      ),
    );
  }
}
