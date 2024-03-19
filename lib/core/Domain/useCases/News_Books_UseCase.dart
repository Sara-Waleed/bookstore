

import 'package:dartz/dartz.dart';

import '../../../features/Data/models/bookmodel.dart';
import '../Repos/home_repo.dart';
import 'Fetch_Books_UseCase.dart';

class NewsBooksUseCase extends UseCase<List<BookModel>,NoParams>{

  final HomeRepo home;
  NewsBooksUseCase(this.home);

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
