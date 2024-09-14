import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:dio/dio.dart';

final Dio dio = Dio();
final getIt = GetIt.instance;
final talker = TalkerFlutter.init();
Future<void> setupLocator() async {
  getIt.registerSingleton(talker);
  getIt.registerSingleton(TopNewsRepository(dio: getIt<Dio>()));
  getIt.registerSingleton(HomeBloc(getIt.get<TopNewsRepository>()));
}