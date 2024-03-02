import 'package:bookstore/features/Data/models/bookmodel.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../core/utils/Api_Services.dart';
import 'home_repo.dart';


class home_repo_imp implements HomeRepo {
  final Api apiService;

  home_repo_imp(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await apiService.get(
          endpoint:
          'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
         print(item);
        }
      }

      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() async {
    try {
      var data = await apiService.get(
          endpoint: 'volumes?Filtering=free-ebooks&q=subject:science');
      List<BookModel> books = [];
      for (var item in data['items']) {
      try{
        books.add(BookModel.fromJson(item));
      }catch(error){
        print(item);
      }
      }

      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category})
  async {
    try {
      var data = await apiService.get(
          endpoint: 'volumes?Filtering=free-ebooks&q=subject:science');
      List<BookModel> books = [];
      for (var item in data['items']) {
        try{
          books.add(BookModel.fromJson(item));
        }catch(error){
          print(item);
        }
      }

      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

}