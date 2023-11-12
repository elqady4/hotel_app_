import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.hotelsgo.co/test/';
  final Dio _dio;

  ApiService(this._dio);

  Future<List<dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
