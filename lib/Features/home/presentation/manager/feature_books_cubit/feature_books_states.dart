import 'package:mvvm_bookly/Features/home/data/model/book_model.dart';

abstract class FeatureBooksStates {}

class FeatureBoxInitial extends FeatureBooksStates {}

class FeatureBoxLoading extends FeatureBooksStates {}

class FeatureBoxSuccess extends FeatureBooksStates {
  final List<BookModel> featureBoxes;

  FeatureBoxSuccess(this.featureBoxes);
}

class FeatureBoxError extends FeatureBooksStates {
  final String message;

  FeatureBoxError(this.message);
}