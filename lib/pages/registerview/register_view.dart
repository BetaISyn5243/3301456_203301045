import 'package:betafitness/core.dart';
import 'package:betafitness/models/database_handler.dart';
import 'package:betafitness/models/report.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:betafitness/utils/Globals.dart' as globals;

part 'register_action_button.dart';
part 'register_body_form.dart';
part 'register_controller.dart';
part 'register_dialogs.dart';
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
