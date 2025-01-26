import '../../data/model/book_model.dart';
import '/Features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.bookModel, required this.books});
final  BookModel bookModel;  final  List<BookModel> books;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(bookModel: bookModel, books: books,),
      ),
    );
  }
}
