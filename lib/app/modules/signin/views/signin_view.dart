import 'package:flash_chat/app/constants/appColors.dart';
import 'package:flash_chat/app/constants/appTextStyles.dart';

import 'package:flash_chat/app/modules/signup/views/signup_view.dart';
import 'package:flash_chat/app/modules/widget/appbar_widget.dart';
import 'package:flash_chat/app/modules/widget/register_widget.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signin_controller.dart';

class SignInView extends StatelessWidget {
  SignInView({Key? key}) : super(key: key);
 SigninController _signinController = Get.put<SigninController>(
    SigninController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          reverse: true,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AppBarWidget(
                text: "Sign In",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      onChanged: (value){
                        _signinController.email.value = value;
                      },
                      style: TextStyle(decorationColor: AppColors.red),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.transparent,
                        focusColor: AppColors.blueB8,
                        // labelText: "Phone",
                        hintText: "Enter email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide:
                              BorderSide(color: AppColors.blue, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide:
                              BorderSide(color: AppColors.blueB8, width: 1.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  onChanged: (value){
                        _signinController.password.value = value;
                      },
                  style: TextStyle(decorationColor: AppColors.red),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.transparent,
                    focusColor: AppColors.blueB8,
                    // labelText: "Phone",
                    hintText: "Enter password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(color: AppColors.blue, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide:
                          BorderSide(color: AppColors.blueB8, width: 1.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RegisterWidget(
                onpress: () {
                 _signinController.signIn();
                 FocusManager.instance.primaryFocus?.unfocus();

                },
                text: "Sign In",color: Colors.black ,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont have an account",
                    style: AppTextStyles.black20w700,
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(SignupView());
                      },
                      child: Text(
                        "Sign Up",
                        style: AppTextStyles.blue16,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
