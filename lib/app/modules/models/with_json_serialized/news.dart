import 'package:json_annotation/json_annotation.dart';

import 'articles.dart';

part 'news.g.dart';

@JsonSerializable()
class News {
  String status;
  int totalResults;
  List<Articles> articles;
  String message;

  News({
    this.status,
    this.totalResults,
    this.articles,
    this.message
  });

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

  Map<String, dynamic> toJson() => _$NewsToJson(this);
}
