import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_bookly/core/utils/AppColors.dart';
import 'package:mvvm_bookly/core/utils/app_images.dart';
import 'package:mvvm_bookly/core/utils/utils.dart';
import 'package:mvvm_bookly/core/widgets/custom_button.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/utils/styles.dart';

class TopWidget extends StatefulWidget {
  const TopWidget({super.key});

  @override
  State<TopWidget> createState() => _TopWidgetState();
}

class _TopWidgetState extends State<TopWidget> {
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Center(
        child: Card(
          color: AppColors.backLight,
          child: SizedBox(
              height: MediaQuery.of(context).size.height * .2,
              child: AspectRatio(
                aspectRatio: 3 / 1,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                    Container(
                              height: 130,
                              width: 90,
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.firstGray,
                                    spreadRadius: 9,
                                    blurRadius: 5,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                                image: DecorationImage(
                                  image: AssetImage(Assets.assetsImagesBook2),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                      15.pw,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'The Power of Habit',
                            style: Styles.textStyle14.copyWith(
                                fontWeight: FontWeight.w700,
                                color: AppColors.secondtGray),
                          ),
                          12.ph,
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .5,
                            child: Text(
                              'The psychology of money is the study of our behavior with money. Success with money isn\'t about knowledge.',
                              style: Styles.textStyle8.copyWith(
                                color: AppColors.gray,
                              ),
                            ),
                          ),
                          15.ph,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomButton(
                                height: 35.h,
                                text: "Grab Now",
                                textStyle: Styles.textStyle10
                                    .copyWith(fontWeight: FontWeight.w600),
                              ),
                              15.pw,
                              Text(
                                "Learn More",
                                style: Styles.textStyle10.copyWith(
                                    color: AppColors.secondtGray,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
