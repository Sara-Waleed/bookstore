import 'package:bookstore/features/Data/models/bookmodel.dart';

import 'home_repo.dart';

class home_repo_imp implements HomeRepo{
  final Api apiService;

  @override
  Future<Either<Failure,List<BookModel>>> fetchBestSellerBooks() {
    apiService.get()
  }

  @override
  Future<dynamic> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }


}