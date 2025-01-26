import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mvvm_bookly/Features/home/data/model/book_model.dart';

import '../book_details_view.dart';
import 'custom_book_item.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key, required this.books});
  final List<BookModel> books;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          itemCount: books.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                onTap: () {
                  log("BookDetailsView: SimilarBooksListview: onTap: books[$index].volumeInfo!.title: ${books[index].volumeInfo!.title} ");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BookDetailsView(
                                bookModel: books[index],
                                books: books,
                              )));
                },
                child: CustomBookImage(
                  imageUrl:
                      books[index].volumeInfo!.imageLinks!.thumbnail ?? "",
                ),
              ),
            );
          }),
    );
  }
}
