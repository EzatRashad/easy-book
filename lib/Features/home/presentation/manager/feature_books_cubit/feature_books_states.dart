import 'package:mvvm_bookly/Features/home/data/model/book_model.dart';

abstract class FeatureBooksStates {}

class FeatureBooksInitial extends FeatureBooksStates {}

class FeatureBooksLoading extends FeatureBooksStates {}

class FeatureBooksSuccess extends FeatureBooksStates {
  final List<BookModel> featureBooks;

  FeatureBooksSuccess(this.featureBooks);
}

class FeatureBooksError extends FeatureBooksStates {
  final String message;

  FeatureBooksError(this.message);
}