import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/app/constants/appColors.dart';
import 'package:flash_chat/app/constants/appTextStyles.dart';
import 'package:flash_chat/app/modules/auth/widgets/auth_widgets.dart';

import 'package:flash_chat/app/modules/signin/views/signin_view.dart';
import 'package:flash_chat/app/modules/signup/views/signup_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/vectors/output.png',height: 50),
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 20.0,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText(
                        'Flash chat',
                        textStyle: AppTextStyles.black40w700,
                      ),
                    ],
                    isRepeatingAnimation: true,
                    onTap: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            AuthWidget(
              width: width * 0.35,
              height: height * 0.015,
              label: 'Sign In',
              color: AppColors.blueAccent,
              onPressed: () {
                Get.to(SignInView());
              },
            ),
            const SizedBox(
              height: 15,
            ),
            AuthWidget(
              width: width * 0.33,
              height: height * 0.015,
              label: 'Sign Up',
              color: AppColors.greenAccent,
              onPressed: () {
                Get.to(SignupView());
              },
            ),
          ],
        ),
      ),
    );
  }
}
