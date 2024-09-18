import 'package:bookly_app/core/barrel/imports.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Failures,List<Books>>> fetchAllBooks();
  Future<Either<Failures,List<Books>>> fetchBestBooks();

}