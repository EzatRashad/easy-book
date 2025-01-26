import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mvvm_bookly/core/utils/AppColors.dart';
import 'package:mvvm_bookly/core/utils/utils.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../data/model/book_model.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({super.key, required this.bookModel});
  final BookModel bookModel;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
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
                          SizedBox(
                            height: 130,
                            width: 90,
                            child: CachedNetworkImage(
                                imageUrl:
                                    bookModel.volumeInfo!.imageLinks!.thumbnail ??
                                        ""),
                          ),
                          15.pw,
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                SizedBox(
                                width: MediaQuery.of(context).size.width * .5,
                                child: Text(
                                  bookModel.volumeInfo!.title!,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: Styles.textStyle14.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.backLight),
                                ),
                                ),
                              10.ph,
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .5,
                                child: Text(
                                  bookModel.volumeInfo!.description??"No Description",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: Styles.textStyle8.copyWith(
                                    color: AppColors.firstGray,
                                  ),
                                ),
                              ),
                              15.ph,
                              CustomButton(
                                text: "Grab Now",
                                textStyle: Styles.textStyle10
                                    .copyWith(fontWeight: FontWeight.w600),
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
                        CircleAvatar(
                          radius: 25,
                          child: Text(
                            bookModel.volumeInfo!.authors![0]
                                .toString()[0]
                                .toUpperCase(),
                            style: Styles.textStyle20,
                          ),
                        ),
                        16.pw,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Author',
                              style: Styles.textStyle14
                                  .copyWith(color: AppColors.secondtGray),
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * .4,
                              
                              child: Text(
                                bookModel.volumeInfo!.authors![0]
                                  .toString(),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Styles.textStyle18
                                    .copyWith(color: AppColors.secondtGray),
                              ),
                            ),
                            Text(
                              bookModel.volumeInfo!.publisher!,
                              style: Styles.textStyle10.copyWith(
                                color: AppColors.secondtGray,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                         const Icon(
              FontAwesomeIcons.solidStar,
              size: 14,
              color: Color(0xffFFDD4F),
            ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
    
      ],
    );

  }
}
