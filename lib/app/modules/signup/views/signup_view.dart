import 'package:flash_chat/app/constants/appTextStyles.dart';
import 'package:flash_chat/app/modules/signin/views/signin_view.dart';
import 'package:flash_chat/app/modules/signup/input_decoration.dart/input_decoration.dart';
import 'package:flash_chat/app/modules/widget/appbar_widget.dart';

import 'package:flash_chat/app/modules/widget/register_widget.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  SignupView({Key? key}) : super(key: key);
  String textField = '';
  final signupController = Get.put<SignupController>(SignupController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          reverse: true,
          child: Column(
            children: [
              AppBarWidget(
                text: "Sign Up",
              ),
              SizedBox(
                height: height * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  onChanged: (value) {
                    signupController.name.value = value;

                  },
                  decoration: inputDecoration.copyWith(
                    label: Text("Name"),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                    onChanged: (value) {
                      signupController.email.value = value;
                    },
                    decoration: inputDecoration.copyWith(
                      label: Text("Email"),
                    )),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                    onChanged: (value) {
                      signupController.password.value = value;
                    },
                    decoration: inputDecoration.copyWith(
                      label: Text("Password"),
                    )),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                    onChanged: (value) {
                      signupController.password.value = value;
                    },
                    decoration: inputDecoration.copyWith(
                      label: Text("Confirm password"),
                    )),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              RegisterWidget(
                onpress: () {
                  signupController.signUp();
                  FocusManager.instance.primaryFocus?.unfocus();

                },
                text: "Sign Up",
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account",
                    style: AppTextStyles.black20w700,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(
                        SignInView(),
                      );
                    },
                    child: Text(
                      "Sign In",
                      style: AppTextStyles.blue16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
