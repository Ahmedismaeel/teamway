import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:internal_app/auth/auth_controller.dart';
import 'package:internal_app/global/helper/widget_submit_helper.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/edit_text.dart';
import 'package:internal_app/global/widgets/row_button.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/home/bottom_navigator.dart';
import 'package:lottie/lottie.dart';
import 'package:modular_ui/modular_ui.dart';
import 'package:nb_utils/nb_utils.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool visibility = true;
  change() {
    visibility = !visibility;
    setState(() {});
  }

  List<String> genderOptions = ['Male', 'Female', 'Other'];
  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> checkedNotifier = ValueNotifier(true);
    return Scaffold(
      body: Stack(
        children: [
          // BackGroundView(),
          FormBuilder(
            key: formKey,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: ListView(
                children: [
                  40.height,
                  // Row(
                  //   children: [
                  //     InkWell(
                  //         onTap: () {
                  //           Navigator.pop(context);
                  //         },
                  //         child: Icon(Icons.arrow_back_ios))
                  //   ],
                  // ),
                  // 30.height,
                  Text(
                    "Welcome Back .",
                    style: CustomStyle.h4,
                  ),
                  30.height,
                  FormBuilderTextField(
                    controller: email,
                    name: "Text",
                    cursorHeight: 20,
                    cursorWidth: 1,
                    textInputAction: TextInputAction.done,
                    decoration: editTextDecoration().copyWith(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                        hintText: "Enter your email",
                        prefixIcon: Icon(
                          Icons.alternate_email_sharp,
                        )),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.email(),
                    ]),
                  ),
                  12.height,
                  FormBuilderTextField(
                    controller: password,
                    obscureText: visibility,
                    cursorHeight: 20,
                    cursorWidth: 1,
                    decoration: editTextDecoration().copyWith(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                      hintText: "Enter your password",
                      suffixIcon: InkWell(
                        onTap: () {
                          change();
                        },
                        child: visibility
                            ? const Icon(
                                Icons.visibility_off,
                                size: 22,
                              )
                            : const Icon(
                                Icons.visibility,
                                size: 22,
                              ),
                      ),
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                    name: 'password',
                  ),
                  20.height,
                  RowButton(text: "Login").submit(
                      provider: authProvider,
                      onSuccess: (onSuccess) {
                        HomeNavigatorView().launch(context,
                            isNewTask: true,
                            pageRouteAnimation: PageRouteAnimation.Fade);
                      },
                      onFailed: (onFailed) {},
                      onTap: (ref) {
                        if (formKey.currentState?.saveAndValidate() == true) {
                          "true".log();
                          ref.read(authProvider.notifier).login(
                              email: email.text, password: password.text);
                        } else {
                          "false".log();
                        }
                      }),
                  20.height,
                  Lottie.asset("assets/lottie/auth.json")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BackGroundView extends StatelessWidget {
  const BackGroundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: -90,
          top: -90,
          child: Container(
            width: 200,
            height: 200,
            decoration: boxDecorationDefault(
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(
                      color: UiColors.primary.withOpacity(0.3), blurRadius: 1)
                ],
                shape: BoxShape.circle),
          ),
        ),
        Positioned(
          bottom: -120,
          right: -120,
          child: Container(
            width: 400,
            height: 400,
            decoration: boxDecorationDefault(
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(
                      color: UiColors.secondary.withOpacity(0.2), blurRadius: 5)
                ],
                shape: BoxShape.circle),
          ),
        ),
      ],
    );
  }
}
