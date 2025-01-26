import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_bookly/Features/home/presentation/views/home_view.dart';
import 'package:mvvm_bookly/core/utils/AppColors.dart';
import 'package:mvvm_bookly/core/utils/utils.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      floating: true,
      snap: true,
      leading: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeView()));
        },
        child: Icon(
          FontAwesomeIcons.arrowLeft,
          color: AppColors.backLight,
          size: 24.sp,
        ),
      ),
      actions: [
        Icon(
          FontAwesomeIcons.heart,
          color: AppColors.backLight,
          size: 24.sp,
        ),
        20.pw,
      ],
      backgroundColor: AppColors.blue,
    );
  }
}
