import 'package:betafitness/core.dart';

part 'profile_settings_controllers.dart';
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
                    FutureBuilder(future: Users().getUser(),
                        builder: (builder,AsyncSnapshot<UserModel> snap){
                          return Row(
                            children: [


                              Flexible(
                                  flex: 1,
                                  child: ProfileTextFieldWidget(
                                    title: "Firstname",
                                    hint: snap.data!.name.split(" ")[0],
                                    textEditingController:
                                    ProfileSettingsController.firstNameController,
                                  )),
                              Flexible(
                                  flex: 1,
                                  child: ProfileTextFieldWidget(
                                    title: "Lastname",
                                    hint: snap.data!.name.split(" ")[1],
                                    textEditingController:
                                    ProfileSettingsController.lastNameController,
                                  )),
                            ],
                          );
                        }
                    ),

                    ProfileTextFieldWidget(
                      title: TextConstants.username,
                      hint: "BetaISyn5243",
                      textEditingController:
                          ProfileSettingsController.usernameController,
                    ),
                    ProfileTextFieldWidget(
                      title: "Phone Number",
                      hint: TextConstants.phoneHint,
                      textEditingController:
                          ProfileSettingsController.phoneNumberController,
                    ),
                    Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: ProfileTextFieldWidget(
                              title: "Date of Birth",
                              hint: "01-01-2023",
                              textEditingController: ProfileSettingsController
                                  .dateOfBirthController,
                            )),
                        Flexible(
                            flex: 1,
                            child: ProfileTextFieldWidget(
                              title: "Gender",
                              hint: "male",
                              textEditingController:
                                  ProfileSettingsController.genderController,
                            )),
                      ],
                    ),
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
