import 'package:json_annotation/json_annotation.dart';

part 'title.g.dart';

@JsonSerializable()
class Title {
  String? id;
  String? title;
  String? image;
  String? year;
  String? runtimeMins;
  String? plot;
  String? directors;
  List<ActorList>? actorList;
  Title({
    this.id,
    this.title,
    this.image,
    this.year,
    this.plot,
    this.actorList,
    this.runtimeMins,
    this.directors,
  });

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
  Map<String, dynamic> toJson() => _$TitleToJson(this);
}

@JsonSerializable()
class ActorList {
  String? id, name, image, asCharacter;
  ActorList({this.id, this.name, this.image, this.asCharacter});
  factory ActorList.fromJson(Map<String, dynamic> json) =>
      _$ActorListFromJson(json);
  Map<String, dynamic> toJson() => _$ActorListToJson(this);
}
