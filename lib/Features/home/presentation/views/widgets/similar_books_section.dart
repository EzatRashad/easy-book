import 'package:mvvm_bookly/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:mvvm_bookly/core/utils/utils.dart';

import '../../../data/model/book_model.dart';
import '/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key, required this.books});
  final List<BookModel> books;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'You can also like',
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          3.ph,
          SimilarBooksListview(books: books),
        ],
      ),
    );
  }
}
