import 'dart:async';
import 'package:dio/dio.dart';
import 'package:news_brief/data/data.dart';
import 'package:news_brief/domain/domain.dart';


class TopNewsRepository extends TopNewsRepositoryInterface {
TopNewsRepository({required this.dio});
final Dio dio;
@override
Future<List<Article>> getTopNews() async {
try {
final Response response = await dio.get(
Endpoints.motorcycle,
queryParameters: {
'make': 'Kawasaki',
'model': 'Ninja 400',
'year': '2020',
},
);
final news = (response.data['data'] as List)
.map((e) => Article.fromJson(e))
.toList();
return news;
} on DioException catch (e) {
throw e.message.toString();
}
}
}
