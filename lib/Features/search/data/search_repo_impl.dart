import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mvvm_bookly/Features/home/data/model/book_model.dart';
import 'package:mvvm_bookly/Features/search/data/search_repo.dart';
import 'package:mvvm_bookly/core/failure/failure.dart';
import 'package:mvvm_bookly/core/utils/api_service.dart';

class SearchRepoImpl extends SearchRepo {
  SearchRepoImpl(this._apiService);
  late final ApiService _apiService;
  @override
  Future<Either<Failure, List<BookModel>>> getSearchResults(String query) async {
    try {
      var data = await _apiService.get(
          endPoint:
              'volumes?q=$query&Filtering=free-ebooks&sorting=oldest');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }
 
}
