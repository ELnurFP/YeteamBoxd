import 'package:json_annotation/json_annotation.dart';

part 'title.g.dart';

@JsonSerializable()
class Title {
  String id;
  String title;
  String image;
  int year, runtimeMins;
  String plot;
  ActorList actorList;
  Title(
      {required this.id,
      required this.title,
      required this.image,
      required this.year,
      required this.plot,
      required this.actorList,
      required this.runtimeMins});

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
  Map<String, dynamic> toJson() => _$TitleToJson(this);
}

@JsonSerializable()
class ActorList {
  String id, name, image, asCharacter;
  ActorList(
      {required this.id,
      required this.name,
      required this.image,
      required this.asCharacter});
  factory ActorList.fromJson(Map<String, dynamic> json) =>
      _$ActorListFromJson(json);
  Map<String, dynamic> toJson() => _$ActorListToJson(this);
}
