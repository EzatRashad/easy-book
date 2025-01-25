import 'package:mvvm_bookly/Features/home/data/model/book_model.dart';

abstract class NewestBooksStates {}

class NewesBoxInitial extends NewestBooksStates {}

class NewesBoxLoading extends NewestBooksStates {}

class NewesBoxSuccess extends NewestBooksStates {
  final List<BookModel> featureBoxes;

  NewesBoxSuccess(this.featureBoxes);
}

class NewesBoxError extends NewestBooksStates {
  final String message;

  NewesBoxError(this.message);
}