import 'package:bookly_app/core/barrel/imports.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  final HomeRepo homeRepo;

  BestSellerCubit(this.homeRepo) : super(BestSellerInitial());
  fetchBestSeller() async{
    emit(BestSellerLoading());
    var result = await homeRepo.fetchBestBooks();
    result.fold((ifLeft){
      emit(BestSellerFailures(ifLeft.error));
    }, (books){
      emit(BestSellerSuccess(books));
    });
  }
}
