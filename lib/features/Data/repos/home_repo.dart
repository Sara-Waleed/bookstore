import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../models/bookmodel.dart';

abstract class HomeRepo{
Future <Either<Failure,List<BookModel>>>fetchBestSellerBooks();
Future <Either<Failure,List<BookModel>>>fetchFeatureBooks();


}

abstract class Failure{
  final String errorMess;
  const Failure(this.errorMess);
}
class ServerFailure extends Failure{
  ServerFailure(super.errorMess);
  factory ServerFailure.fromDioError(DioError dioError){
    switch(dioError.type){
      case DioErrorType.connectionTimeout:
      return ServerFailure("Connection timeout occurred");

      case DioErrorType.sendTimeout:
       return ServerFailure("Send timeout occurred");
      case DioErrorType.receiveTimeout:
        return ServerFailure("Receive timeout occurred");
      case DioErrorType.sendTimeout:
        return ServerFailure("");
      case DioErrorType.receiveTimeout:
        return ServerFailure("");
      case DioErrorType.badResponse:
        return ServerFailure("");
      case DioErrorType.cancel:
        return ServerFailure('Request was cancelled');

      // case DioErrorType.other:
      //   return ServerFailure('An error occurred: ${dioError.message}');
      case DioExceptionType.connectionError:
       return ServerFailure('Request was cancelled');
      case DioExceptionType.unknown:
        // TODO: Handle this case.
      if (dioError.response?.statusCode == 404) {
        return ServerFailure('Resource not found');
      } else {
        return ServerFailure('Received invalid status code: ${dioError.response?.statusCode}');
      }
      break;
      case DioExceptionType.badCertificate:
        // TODO: Handle this case.
        default:
          return ServerFailure("ooPs There was an error , please try again ");

    }
  }
}