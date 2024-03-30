import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;
  static init() {
    dio = Dio(BaseOptions(receiveDataWhenStatusError: true, headers: {
      'language': 'en',
    }));
  }

  static Future<Response?> getData(
      {required String url, Map<String, dynamic>? query, String? token}) async {
    return await dio.get(url,
        queryParameters: query,
        options: Options(headers: {'Authorization': token}));
  }
}
