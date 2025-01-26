 

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_bookly/Features/favorites/data/model/favorites_model.dart';
import 'package:mvvm_bookly/Features/favorites/manager/favorites_cubit/favorites_state.dart';

import '../../../../core/utils/hive_services.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit() : super(FavoritesInitial());

  void getFavorites() {
    emit(FavoritesLoading());

    try {
      var result = HiveServices.getItems();

      emit(FavoritesSuccess(result));
    } on Exception catch (e) {
      emit(FavoritesFailure(e.toString()));
    }
  }


  Future<void> addDataToHive(FavoritesBookModel favoriteBook) async {
    try {
      await HiveServices.addItem(book: favoriteBook);
      emit(AddToFavoritesSuccess());
    } on Exception catch (e) {
      emit(AddToFavoritesFailure(e.toString()));
    }
  }

  Future<void> removeItemFromHive(String id) async {
    try {
      await HiveServices.deleteItem(id);
      emit(AddToFavoritesDelete());
    } on Exception catch (e) {
      emit(AddToFavoritesFailure(e.toString()));
    }
  }
}
