import 'package:bloc/bloc.dart';
import 'package:bookstore/core/Domain/Repos/home_repo.dart';
import 'package:meta/meta.dart';

import '../../models/bookmodel.dart';

part 'featured_books_states_state.dart';

class FeaturedBooksStatesCubit extends Cubit<FeaturedBooksStatesState> {
  FeaturedBooksStatesCubit(this.homeRepo) : super(FeaturedBooksStatesInitial());

 final HomeRepo homeRepo;
  Future<void> fetchFeatureBooks()async {
    emit(FeaturedBooksStatesLoading());
    var result= await homeRepo.fetchFeatureBooks();
    result.fold((failer){
      emit(FeaturedBooksStatesFailure(failer.errorMess));
    },(books){
      emit(FeaturedBooksStatesSuccess(books));
    }
    );
}
}