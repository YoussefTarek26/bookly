import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:bookly_app/features/home/presentation/manager/all_books/newst_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewstBooksCubit extends Cubit<NewstBooksState> {
  final HomeRepo homeRepo;

  NewstBooksCubit(this.homeRepo) : super(NewstBooksInitial());
  fetchNewsBooks() async {
    emit(NewstBooksLoading());
    var result = await homeRepo.fetchAllBooks();
    result.fold((ifLeft){
      emit(NewstBooksFailures(ifLeft.error));
    }, (books){
      emit(NewstBooksSuccess(books));
    });
  }
}