import 'package:bookstore/features/Data/models/bookmodel.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../core/utils/Api_Services.dart';
import 'home_repo.dart';


class home_repo_imp implements HomeRepo{
   final Api apiService;

   home_repo_imp({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks()async {
       try{
         var response = await apiService.get(
             endpoint: "volumes?Filtering=free-ebooks&q=subject:Programming");
        List<BookModel> books =[];
        for (var item in response['items']){
          books.add(BookModel.fromJson(item));

        }
        return right(books);
       }on Exception catch(error){
         if(error is DioError) {
           return left(ServerFailure.fromDioError(error));
         }
         return left(ServerFailure(error.toString()));
       }

  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() async{
    try{
      var response = await apiService.get(
          endpoint: "volumes?Filtering=free-ebooks&q=subject:programming");
      List<BookModel> books =[];
      for (var item in response['items']){
        books.add(BookModel.fromJson(item));

      }
      return right(books);
    }on Exception catch(error){
      if(error is DioError) {
        return left(ServerFailure.fromDioError(error));
      }
      return left(ServerFailure(error.toString()));
    }

  }


}