part of 'best_seller_books_cubit.dart';

@immutable
abstract class BestSellerBooksState {}

class BestSellerBooksInitial extends BestSellerBooksState {}
class BestSellerBooksFailure extends BestSellerBooksState {

  final String errmeg;
  BestSellerBooksFailure(this.errmeg);
}
class BestSellerBooksSuccess extends BestSellerBooksState {
  final List<BookModel> books;
  BestSellerBooksSuccess(this.books);

}
class BestSellerBooksLoading extends BestSellerBooksState {}
