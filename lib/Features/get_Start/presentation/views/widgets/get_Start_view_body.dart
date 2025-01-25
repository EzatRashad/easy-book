import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_bookly/core/utils/utils.dart';
import 'package:mvvm_bookly/core/widgets/custom_button.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/styles.dart';

class GetStartViewBody extends StatelessWidget {
  const GetStartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.assetsImagesOnBoarding3Body),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Spacer(),
                  const Text(
                    "Book Has Power To Chnage Everything",
                    textAlign: TextAlign.center,
                    style: Styles.textStyle24,
                  ),
                  15.ph,
                  const Text(
                    "We have true friend in our life and the books is that. Book has power to chnage yourself and make you more valueable.",
                    textAlign: TextAlign.center,
                    style: Styles.textStyle14,
                  ),
                  25.ph,
                  CustomButton(
                    height: 50,
                    width: 230,
                      text: "Get Started Now",
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.homeView);
                      }),
                  50.ph
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
