import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/bookmodel.dart';
import '../../repos/home_repo.dart';

part 'best_seller_books_state.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  BestSellerBooksCubit(this.homeRepo) : super(BestSellerBooksInitial());


  final HomeRepo homeRepo;
  Future<void> fetchBestSellerBooks()async {
    emit(BestSellerBooksLoading());
    var result = await homeRepo.fetchFeatureBooks();
    result.fold((failer) {
      emit(BestSellerBooksFailure(failer.errorMess));
    }, (books) {
      emit(BestSellerBooksSuccess(books));
    }
    );
  }

}
