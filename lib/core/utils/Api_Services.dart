class Api {

  final baseUrl="";
  final Dio dio;
    Api(this.dio);
    Future<Map<String,dynamic>> get({required String endpoint})async{
   var reponse  =await dio.get('$baseUrl$endpoint');
      return response.data;
    }


}