import 'package:mvvm_bookly/Features/home/presentation/views/widgets/book_desc.dart';
import 'package:mvvm_bookly/Features/home/presentation/views/widgets/books_action.dart';
import 'package:mvvm_bookly/core/utils/utils.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/model/book_model.dart';
import '/Features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_book_details_app_bar.dart';
import 'details_widget.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody(
      {super.key, required this.bookModel, required this.books});
  final BookModel bookModel;
  final List<BookModel> books;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomBookDetailsAppBar(),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              DetailsWidget(
                bookModel: bookModel,
              ),
              80.ph,
              BooksAction(
                book: bookModel,
              ),
              20.ph,
            BookDesc(desc: bookModel.volumeInfo!.description ?? "No Description"),
              20.ph,
              SimilarBooksSection(
                books: books,
              ),
             ],
          ),
        ),
      ],
    );
  }
}
