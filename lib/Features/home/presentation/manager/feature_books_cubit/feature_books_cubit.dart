import 'package:mvvm_bookly/Features/home/data/home_repo/home_repo.dart';
import 'package:mvvm_bookly/Features/home/presentation/manager/feature_books_cubit/feature_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksStates> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksInitial());
  final HomeRepo homeRepo;
  Future<void> getFeatureBooks() async {
    emit(FeatureBooksLoading());
    var response = await homeRepo.fetchFeaturedBooks();
    response.fold(
      (failure) => emit(FeatureBooksError(failure.errorMessage)),
      (books) => emit(FeatureBooksSuccess(books)),
    );
  }
}
