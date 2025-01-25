import 'package:dartz/dartz.dart';
import 'package:mvvm_bookly/Features/home/data/model/book_model.dart';
import 'package:mvvm_bookly/core/failure/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();  
  Future<Either<Failure,List<BookModel>>> fetchNewestBooks();

}