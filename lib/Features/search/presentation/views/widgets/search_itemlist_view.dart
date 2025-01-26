import 'package:flutter/material.dart';
import 'package:mvvm_bookly/Features/home/data/model/book_model.dart';
import 'package:mvvm_bookly/Features/home/presentation/views/book_details_view.dart';

import 'search_item.dart';

class SearchItemlistView extends StatelessWidget {
  const SearchItemlistView({super.key, required this.books});
   final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: books.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: GestureDetector(
            onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BookDetailsView(
                bookModel: books[index],
                books: books,
              ),
            )),
            child: SearchItem(
              bookModel:books[index], //state.newestBooks[index],
             ),
          ),
        );
      },
    );
  }
}
