import 'package:bookly_app/core/barrel/imports.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/network/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo{
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failures, List<Books>>> fetchAllBooks()async {
    try {
      var data =  await apiService.get(endpoin: "volumes?Filtering=free-ebooks&q=computer%20science");
      List<Books> books = [];
      for (var item in data["items"]){
        books.add(Books.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerError(e.toString()));
      // TODO
    }
  }

  @override
  Future<Either<Failures, List<Books>>> fetchBestBooks() async {
    try {
      var data =  await apiService.get(endpoin: "volumes?Filtering=free-ebooks&Sorting=newest%20&q=computer%20science");
      List<Books> books = [];
      for (var item in data["items"]){
        books.add(Books.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerError(e.toString()));
      // TODO
    }
  }

}
