part of 'featured_books_states_cubit.dart';

@immutable
abstract class FeaturedBooksStatesState {}

class FeaturedBooksStatesInitial extends FeaturedBooksStatesState {}
class FeaturedBooksStatesSuccess extends FeaturedBooksStatesState {
  final List<BookModel> books;
  FeaturedBooksStatesSuccess(this.books);


}
class FeaturedBooksStatesFailure extends FeaturedBooksStatesState {
 final  String ErroMess;
   FeaturedBooksStatesFailure(this.ErroMess);
}
class FeaturedBooksStatesLoading extends FeaturedBooksStatesState {}