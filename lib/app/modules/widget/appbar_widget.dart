
import 'package:flash_chat/app/constants/appColors.dart';
import 'package:flash_chat/app/modules/welcome/views/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    this.text,
  });
  final String? text;

  // final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
        color: AppColors.blueB8,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          IconButton(
              onPressed: () {
                Get.to(WelcomeView());
              },
              icon: Icon(
                Icons.arrow_back_rounded,
                size: 40,
                color: AppColors.white,
              )),
          SizedBox(
            height: 20,
          ),
          Text(
            text!,
            style: TextStyle(
                fontSize: 30,
                color: AppColors.white,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
        ]),
      ),
    );
  }
}
