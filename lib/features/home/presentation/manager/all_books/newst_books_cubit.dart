import 'package:bookly_app/core/barrel/imports.dart';

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