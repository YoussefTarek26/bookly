import 'package:bookly_app/core/barrel/imports.dart';

abstract class BestSellerState {}

final class BestSellerInitial extends BestSellerState {}
final class BestSellerLoading extends BestSellerState {}
final class BestSellerFailures extends BestSellerState {
  final String error;

  BestSellerFailures(this.error);
}
final class BestSellerSuccess extends BestSellerState {
  final List<Books> books;

  BestSellerSuccess(this.books);
}

