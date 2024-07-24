import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/books/books.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Failures,List<Books>>> fetchAllBooks();
  Future<Either<Failures,List<Books>>> fetchBestBooks();


}