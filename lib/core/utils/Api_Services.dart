import 'package:dio/dio.dart';

class Api {

  final baseUrl="https://www.googleleapis.com/books/v1/";
  final Dio dio;
    Api(this.dio);
    Future<Map<String,dynamic>> get({required String endpoint})async{
   var response  =await dio.get('$baseUrl$endpoint');
      return response.data;
    }


}