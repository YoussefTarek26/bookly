import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:bookly_app/features/home/presentation/manager/best_books/best_seller_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
