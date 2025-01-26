import 'package:mvvm_bookly/Features/home/data/model/book_model.dart';

abstract class NewestBooksStates {}

class NewesBooksInitial extends NewestBooksStates {}

class NewesBooksLoading extends NewestBooksStates {}

class NewesBooksSuccess extends NewestBooksStates {
  final List<BookModel> newestBooks;

  NewesBooksSuccess(this.newestBooks);
}

class NewesBooksError extends NewestBooksStates {
  final String message;

  NewesBooksError(this.message);
}