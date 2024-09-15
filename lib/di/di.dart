import 'package:news_brief/domain/domain.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:dio/dio.dart';
import 'package:news_brief/data/data.dart';
import 'package:news_brief/app/app.dart';
import 'package:news_brief/app/features/home/bloc/home_bloc.dart';

final GetIt getIt = GetIt.instance;
final Talker talker = TalkerFlutter.init();
final Dio dio = Dio();

Future<void> setupLocator() async {
  setUpDio();
  getIt.registerSingleton<Dio>(dio);
  getIt.registerSingleton<Talker>(talker);
  getIt.registerSingleton(TopNewsRepository(dio: getIt<Dio>()));
  getIt.registerSingleton(HomeBloc(getIt.get<TopNewsRepository>()));
}