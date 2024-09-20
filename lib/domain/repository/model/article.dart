//import 'package:json_annotation/json_annotation.dart';
part 'article.g.dart';

//@JsonSerializable()
class Article {
  Article({
    required this.make,
    required this.model,
    required this.year,
    required this.displacement,
  });

  //@JsonKey(name: '_id')
  final String make;
  final String model;
  final String year;
  final String displacement;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}