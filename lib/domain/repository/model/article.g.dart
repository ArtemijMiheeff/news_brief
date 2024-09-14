// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
      make: json['make'] as String,
      model: json['model'] as String,
      year: json['year'] as String,
      displacement: json['year'] as String,
    );

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'make': instance.make,
      'model': instance.model,
      'year': instance.year,
      'displacement': instance.displacement,
    };