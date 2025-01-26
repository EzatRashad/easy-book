import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_bookly/Features/search/data/search_repo.dart';

import 'search_states.dart';
 
class SearchCubit extends Cubit<SearchBooksStates> {
  SearchCubit(this.searchRepo) : super(SearchBooksInitial());
  final SearchRepo searchRepo;
   Future<void> getSearchBooks(  String query) async {
    if (query.isEmpty) {
      emit(SearchEmpty());
      return;
    }
    emit(SearchBooksLoading());
    var response = await searchRepo.getSearchResults( query);
    response.fold(
      (failure) => emit(SearchBooksError(failure.errorMessage)),
      (books) => emit(SearchBooksSuccess(books)),
    );
  }
}
