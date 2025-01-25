import 'package:mvvm_bookly/Features/home/data/home_repo/home_repo.dart';
import 'package:mvvm_bookly/Features/home/presentation/manager/feature_books_cubit/feature_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksStates> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBoxInitial());
  final HomeRepo homeRepo;
  Future<void> getFeatureBooks() async {
    emit(FeatureBoxLoading());
    var response = await homeRepo.fetchFeaturedBooks();
    response.fold(
      (failure) => emit(FeatureBoxError(failure.errorMessage)),
      (books) => emit(FeatureBoxSuccess(books)),
    );
  }
}
