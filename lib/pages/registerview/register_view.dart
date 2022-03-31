import 'package:betafitness/core.dart';

part 'register_action_button.dart';
part 'register_body_form.dart';
part 'register_controller.dart';
part 'register_utils.dart';

@immutable
class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            BodyHeader(
                title: TextConstants.signUp,
                subtitle: TextConstants.registerDescription,
                backgroundImagePath: ImageConstants.registerBGPath),
            RegisterBodyForm(),
            RegisterActionButton(),
          ],
        ),
      ),
    );
  }
}
