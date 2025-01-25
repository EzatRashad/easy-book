import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:mvvm_bookly/Features/home/presentation/views/widgets/details_rating.dart';
import 'package:mvvm_bookly/core/utils/AppColors.dart';
import 'package:mvvm_bookly/core/utils/utils.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 280.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.blue,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.r),
                bottomRight: Radius.circular(20.r)),
          ),
          child: Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
                height: MediaQuery.of(context).size.height * .2,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0.r),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 130,
                        width: 90,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(Assets.assetsImagesBook2),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      15.pw,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'The Power of Habit',
                            style: Styles.textStyle14.copyWith(
                                fontWeight: FontWeight.w700,
                                color: AppColors.backLight),
                          ),
                          12.ph,
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .5,
                            child: Text(
                              'The psychology of money is the study of our behavior with money. Success with money isn\'t about knowledge.',
                              style: Styles.textStyle8.copyWith(
                                color: AppColors.firstGray,
                              ),
                            ),
                          ),
                          15.ph,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomButton(
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
                )),
          ),
        ),
        Positioned(
          bottom: -45.h,
          child: Card(
            child: Container(
              height: 85,
              width: MediaQuery.of(context).size.width * .8,
              decoration: BoxDecoration(
                color: AppColors.backLight,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.r),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                    ),
                    16.pw,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Author',
                          style: Styles.textStyle10
                              .copyWith(color: AppColors.secondtGray),
                        ),
                        Text(
                          'Morgan Housel',
                          style: Styles.textStyle18
                              .copyWith(color: AppColors.secondtGray),
                        ),
                        Text(
                          'Best Seller of New York Times',
                          style: Styles.textStyle10.copyWith(
                            color: AppColors.secondtGray,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const DetailsRating(
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
