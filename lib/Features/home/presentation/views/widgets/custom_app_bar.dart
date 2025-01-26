import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_bookly/Features/favorites/presentation/favorites_view.dart';
import 'package:mvvm_bookly/core/utils/styles.dart';
import 'package:mvvm_bookly/core/utils/utils.dart';
import '../../../../../core/utils/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/app_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      floating: true,
      snap: true,
      leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const FavoritesView()));
          },
          icon: const Icon(
            FontAwesomeIcons.heart,
            color: AppColors.primaryColor,
          )),
      title: const Text(
        "Book of the week",
        style: Styles.textStyle24,
      ),
      actions: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouter.searchView);
          },
          child: Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: AppColors.primaryColor,
            size: 24.sp,
          ),
        ),
        20.pw,
      ],
      backgroundColor: AppColors.backLight,
    );
  }
}
