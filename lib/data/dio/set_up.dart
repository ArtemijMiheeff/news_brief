import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:news_brief/di/di.dart';
void setUpDio() {
  dio.options.baseUrl = 'https://motorcycle-specs-database.p.rapidapi.com/'; // общая часть адресов запросов
  dio.options.queryParameters.addAll({
    'rapidapi-key': 'b5b344bbfbmshd12fd6bb284f6ccp1f5273jsn904933615326', // сюда нужно будет подставить ключ/токен, выданный при регистрации
  });
  dio.options.connectTimeout = const Duration(minutes: 1);
  dio.options.receiveTimeout = const Duration(minutes: 1);
  dio.interceptors.addAll([
    TalkerDioLogger(
      talker: talker,
      settings: const TalkerDioLoggerSettings(
        printRequestData: true,
        printRequestHeaders: true,
      ),
    ),
  ]);
}
