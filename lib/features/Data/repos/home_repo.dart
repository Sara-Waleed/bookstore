import '../models/bookmodel.dart';

abstract class HomeRepo{
Future <Either<Failure,List<BookModel>>>fetchBestSellerBooks();
Future <Either<Failure,List<BookModel>>>fetchFeatureBooks();


}

//inside repo arch there are all functions which contains or implements the feature for each page .

abstract class Failure{}