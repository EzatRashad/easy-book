import 'package:mvvm_bookly/Features/home/presentation/views/widgets/books_action.dart';
import 'package:mvvm_bookly/core/utils/utils.dart';
import '/Features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_book_details_app_bar.dart';
import 'details_widget.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomBookDetailsAppBar(),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const DetailsWidget(),
              80.ph,
              const BooksAction(),
              20.ph,
             
              const SimilarBooksSection(),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
