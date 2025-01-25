import 'dart:developer';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_bookly/core/utils/app_images.dart';
import '/core/utils/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SplashViewbody extends StatefulWidget {
  const SplashViewbody({super.key});

  @override
  State<SplashViewbody> createState() => _SplashViewbodyState();
}

class _SplashViewbodyState extends State<SplashViewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.of(context).size.toString());
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.assetsImagesSplash),
          fit: BoxFit.cover,
        ),
      ),
      child:   Center(
        child: FadeInImage(
          placeholder: const AssetImage(Assets.assetsImagesSI),
          image: const AssetImage(Assets.assetsImagesSI),
          fadeOutDuration: const Duration(seconds: 1),
          fadeInDuration: const Duration(seconds: 2),
          fadeInCurve: Curves.easeInOut,
          height: 124.h,
          width: 178.w,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

 

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        GoRouter.of(context).push(AppRouter.onBoardingView);
      },
    );
  }
}
