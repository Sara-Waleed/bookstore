import 'package:bookstore/core/utils/Api_Services.dart';
import 'package:bookstore/features/Data/repos/home_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit =GetIt.instance;

void SetUp(){

  getit.registerSingleton<home_repo_imp>(
   home_repo_imp(apiService: Api(Dio(),), ),);


}

class AuthRepo{
  final Api service;
  AuthRepo({required this.service});
}