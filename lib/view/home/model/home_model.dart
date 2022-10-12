import 'package:json_annotation/json_annotation.dart';

part 'home_model.g.dart';

@JsonSerializable()
class HomeModel {
  int? page;
  List<Data>? data;

  HomeModel({this.page, this.data});

  @override
  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return _$HomeModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$HomeModelToJson(this);
  }
}

@JsonSerializable()
class Data {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  Data({this.id, this.email, this.firstName, this.lastName, this.avatar});

  factory Data.fromJson(Map<String, dynamic> json) {
    return _$DataFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$DataToJson(this);
  }
}
