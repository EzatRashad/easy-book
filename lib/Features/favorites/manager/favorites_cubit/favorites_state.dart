 
import 'package:mvvm_bookly/Features/favorites/data/model/favorites_model.dart';

sealed class FavoritesState {}

final class FavoritesInitial extends FavoritesState {}

final class FavoritesLoading extends FavoritesState {}

final class FavoritesSuccess extends FavoritesState {
  final List<FavoritesBookModel> favorites;

  FavoritesSuccess(this.favorites);
}

final class FavoritesFailure extends FavoritesState {
  final String errMessage;

  FavoritesFailure(this.errMessage);
}

final class AddToFavoritesInitial extends FavoritesState {}

final class AddToFavoritesSuccess extends FavoritesState {}

final class AddToFavoritesFailure extends FavoritesState {
  final String errMessage;

  AddToFavoritesFailure(this.errMessage);
}

final class AddToFavoritesDelete extends FavoritesState {}

