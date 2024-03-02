part of 'fetch_similar_books_cubit.dart';

@immutable
abstract class FetchSimilarBooksState {}

class FetchSimilarBooksStateInitial extends FetchSimilarBooksState{}
class FetchSimilarBooksStateSuccess extends FetchSimilarBooksState {
  final List<BookModel> books;
  FetchSimilarBooksStateSuccess(this.books);

}
class FetchSimilarBooksStateFailure extends FetchSimilarBooksState {
  final  String ErroMess;
  FetchSimilarBooksStateFailure(this.ErroMess);
}
class FetchSimilarBooksStateLoading extends FetchSimilarBooksState {}