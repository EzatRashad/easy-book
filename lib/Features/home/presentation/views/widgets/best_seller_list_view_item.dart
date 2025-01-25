import 'package:mvvm_bookly/Features/onboardig/presentation/views/widgets/onboarding_view_body.dart';
import 'package:mvvm_bookly/core/utils/AppColors.dart';
import 'package:mvvm_bookly/core/utils/utils.dart';

import '/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Card(
          color: AppColors.backLight,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                AspectRatio(
                  aspectRatio: 2.5 / 4,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.red,
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            AssetsData.testImage,
                          ),
                        )),
                  ),
                ),
                10.pw,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: Text(
                          'Harry Potter and the Goblet of Fire',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.textStyle14.copyWith(
                            color: AppColors.secondtGray,
                            fontWeight: FontWeight.w700,
                           ),
                        ),
                      ),
                      3.ph  ,
                       Text(
                        'J.K. Rowling',
                      style: Styles.textStyle10.copyWith(
                            color: AppColors.secondtGray,
                            fontWeight: FontWeight.w500,
                           ),
                      ),
                      3.ph,
                      Row(
                        children: [
                          Text(
                            '19.99 €',
                            style: Styles.textStyle14.copyWith(
                            color: AppColors.secondtGray, 
                                                       fontWeight: FontWeight.w700,

                           ),
                          ),
                          const Spacer(),
                          const BookRating(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
