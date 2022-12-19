import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class YandexApi {
  static final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://login.yandex.ru/',
    ),
  );

  Future<Response> getInfo(String oauthToken) async {
    return YandexApi.dio.get(
      '/info',
      options: Options(
        headers: {
          'Authorization': 'OAuth $oauthToken',
        },
      ),
    );
  }
}
