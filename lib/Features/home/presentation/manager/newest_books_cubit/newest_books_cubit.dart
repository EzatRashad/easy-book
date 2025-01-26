import 'package:mvvm_bookly/Features/home/data/home_repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_bookly/Features/home/presentation/manager/newest_books_cubit/newest_books_states.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates> {
  NewestBooksCubit(this.homeRepo) : super(NewesBooksInitial());
  final HomeRepo homeRepo;
  Future<void> getNewestBooks() async {
    emit(NewesBooksLoading());
    var response = await homeRepo.fetchNewestBooks();
    response.fold(
      (failure) => emit(NewesBooksError(failure.errorMessage)),
      (books) => emit(NewesBooksSuccess(books)),
    );
  }
}
