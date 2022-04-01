import 'package:betafitness/core.dart';

part 'profile_settings_header.dart';
part 'profile_text_field_widget.dart';

class ProfileSettingsView extends StatelessWidget {
  const ProfileSettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: ColorConstants.kThirdColor,
          ),
          child: Column(
            children: [
              const ProfileSettingsHeader(),
              Padding(padding: EdgeInsets.only(top: 20.h)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: ProfileTextFieldWidget(
                              title: "Firstname",
                              hint: Users.users.last.name.split(" ")[0],
                            )),
                        Flexible(
                            flex: 1,
                            child: ProfileTextFieldWidget(
                              title: "Lastname",
                              hint: Users.users.last.name.split(" ")[1],
                            )),
                      ],
                    ),
                    const ProfileTextFieldWidget(
                        title: TextConstants.username, hint: "BetaISyn5243"),
                    const ProfileTextFieldWidget(
                      title: "Phone Number",
                      hint: TextConstants.phoneHint,
                    ),
                    Row(
                      children: const [
                        Flexible(
                            flex: 1,
                            child: ProfileTextFieldWidget(
                              title: "Date of Birth",
                              hint: "01-01-2023",
                            )),
                        Flexible(
                            flex: 1,
                            child: ProfileTextFieldWidget(
                              title: "Gender",
                              hint: "male",
                            )),
                      ],
                    ),
                    const ProfileTextFieldWidget(
                        title: TextConstants.username, hint: "BetaISyn5243"),
                    const ProfileTextFieldWidget(
                        title: TextConstants.username, hint: "BetaISyn5243"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
