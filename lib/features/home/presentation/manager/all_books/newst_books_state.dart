
import 'package:bookly_app/features/home/data/models/books/books.dart';

 abstract class NewstBooksState {}

final class NewstBooksInitial extends NewstBooksState {}
final class NewstBooksLoading extends NewstBooksState {}
final class NewstBooksFailures extends NewstBooksState {
  final String error;

  NewstBooksFailures(this.error);
}
final class NewstBooksSuccess extends NewstBooksState {
  final List<Books> books;

  NewstBooksSuccess(this.books);
}