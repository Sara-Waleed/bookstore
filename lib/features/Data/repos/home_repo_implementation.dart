import 'package:bookstore/features/Data/models/bookmodel.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../core/utils/Api_Services.dart';
import 'home_repo.dart';

class home_repo_imp implements HomeRepo{
  late final Api apiService;

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks()async {
       try{
         var response = await apiService.get(
             endpoint: "volumes?Filtering=free-ebooks&Sorting=newest &q=subject:programming");
        List<BookModel> books =[];
        for (var item in response['items']){
          books.add(BookModel.fromJson(item));

        }
        return right(books);
       }on Exception catch(error){
         if(error is DioError)
    return left(ServerFailure(error.toString()));

       }

  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }


}