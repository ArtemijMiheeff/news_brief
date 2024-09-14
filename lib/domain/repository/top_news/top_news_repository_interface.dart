import 'dart:async';
import 'package:news_brief/domain/domain.dart';

abstract class TopNewsRepositoryIterface {
Future<List<Article>> getTopNews();
}