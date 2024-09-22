import 'package:json_annotation/json_annotation.dart';
part 'article1.g.dart';

@JsonSerializable()
class Article1 {
  Article1({
    required this.make,
    required this.model,
    required this.year,
    required this.type,
    required this.displacement,
    required this.engine,
    required this.power,
    required this.cooling,
    required this.gearbox,
    required this.transmission,
    required this.total_weight,
    required this.fuel_capacity,
  });

  @JsonKey(name: '_id')
  final String make;
  final String model;
  final String year;
  final String type;
  final String displacement;
  final String engine;
  final String power;
  final String cooling;
  final String gearbox;
  final String transmission;
  final String total_weight;
  final String fuel_capacity;

  factory Article1.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}