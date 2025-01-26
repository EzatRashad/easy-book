import 'package:mvvm_bookly/Features/home/data/model/book_model.dart';

abstract class SearchBooksStates {}

class SearchBooksInitial extends SearchBooksStates {}

class SearchEmpty extends SearchBooksStates {}

class SearchBooksLoading extends SearchBooksStates {}

class SearchBooksSuccess extends SearchBooksStates {
  final List<BookModel> books;

  SearchBooksSuccess(this.books);
}

class SearchBooksError extends SearchBooksStates {
  final String message;

  SearchBooksError(this.message);
}