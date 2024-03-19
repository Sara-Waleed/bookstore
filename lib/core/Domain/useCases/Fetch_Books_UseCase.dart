import 'package:bookstore/core/Domain/Repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../features/Data/models/bookmodel.dart';



class FetchBooksUseCase extends UseCase<List<BookModel>,NoParams>{

  final HomeRepo home;
  FetchBooksUseCase(this.home);

  @override
  Future<Either<Failure, List<BookModel>>> execute([NoParams? params]) async {
    // TODO: implement execute
   return await home.fetchBestSellerBooks();
  }
  // Future<Either<Failure,List<BookModel>>> execute()async{
  //   return await home.fetchBestSellerBooks();
  // }
  //
}

abstract class UseCase<T,Params>{
  Future<Either<Failure,List<BookModel>>> execute([Params params]);
}
class NoParams extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}