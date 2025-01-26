import 'package:cached_network_image/cached_network_image.dart';
import 'package:mvvm_bookly/Features/home/data/model/book_model.dart';
import 'package:mvvm_bookly/core/utils/AppColors.dart';
import 'package:mvvm_bookly/core/utils/utils.dart';

import '../book_details_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem(
      {super.key, required this.bookModel, required this.books});
  final BookModel bookModel;
  final List<BookModel> books;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BookDetailsView(
                bookModel: bookModel,
                books: books,
              ),
            ));
      },
      child: SizedBox(
        height: 135,
        child: Card(
          color: AppColors.backLight,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                AspectRatio(
                  aspectRatio: 2.5 / 4,
                  child: CachedNetworkImage(
                      imageUrl:
                          bookModel.volumeInfo!.imageLinks!.thumbnail ?? ""),
                ),
                10.pw,
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: Text(
                          bookModel.volumeInfo!.title!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.textStyle14.copyWith(
                            color: AppColors.secondtGray,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      3.ph,
                      Text(
                        bookModel.volumeInfo!.authors![0],
                        style: Styles.textStyle10.copyWith(
                          color: AppColors.secondtGray,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      3.ph,
                      Text(
                        bookModel.volumeInfo!.categories!.join(', '),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle14.copyWith(
                          color: AppColors.secondtGray,
                        ),
                      ),
                      3.ph,
                      Row(
                        children: [
                          Text(
                          "\$ ${bookModel.saleInfo!.retailPrice?.amount.toString()?? "Free"}",
                            style: Styles.textStyle16.copyWith(
                              fontWeight: FontWeight.bold,
                              color: bookModel.saleInfo!.retailPrice?.amount.toString()== null? Colors.green[800]:null,
                            ),
                          ),
                          const Spacer(),
                          const BookRating(
                            rating: 4,
                            count: 500,
                          ),
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
