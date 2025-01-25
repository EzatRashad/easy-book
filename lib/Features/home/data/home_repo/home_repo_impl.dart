import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mvvm_bookly/Features/home/data/home_repo/home_repo.dart';
import 'package:mvvm_bookly/Features/home/data/model/book_model.dart';
import 'package:mvvm_bookly/core/failure/failure.dart';
import 'package:mvvm_bookly/core/utils/api_service.dart';

class HomeRepoImpl extends HomeRepo {
  late final ApiService _apiService;
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await _apiService.get(
          endPoint:
              'volumes?q=programming&Filtering=free-ebooks&sorting=newest');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure(e.toString()));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await _apiService.get(
          endPoint: 'volumes?q=programming&Filtering=free-ebooks');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure(e.toString()));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }
}
