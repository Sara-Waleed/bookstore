import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../models/bookmodel.dart';
import '../../repos/home_repo.dart';
part 'fetch_similar_books_state.dart';


class FetchSimilarBooksCubit extends Cubit<FetchSimilarBooksState> {
  FetchSimilarBooksCubit(this.homeRepo) : super(FetchSimilarBooksStateInitial());



  final HomeRepo homeRepo;
  Future<void> fetchFeatureBooks({required String category})async {
    emit(FetchSimilarBooksStateLoading());
    var result= await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failer){
      emit(FetchSimilarBooksStateFailure(failer.errorMess));
    },(books){
      emit(FetchSimilarBooksStateSuccess(books));
    }
    );
  }
}
