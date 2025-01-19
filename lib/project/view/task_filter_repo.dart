import 'dart:convert';

toStringList(List<dynamic> list) {
  List<String> stringList = [];
  for (var element in list) {
    stringList.add(json.encode(element.toJson()));
  }
  return stringList;
}

List<T> toObjectList<T>(
    List<String> list, T Function(Map<String, dynamic> json) fromJson) {
  List<T> objectList = [];
  for (var element in list) {
    objectList.add(fromJson(json.decode(element)));
  }
  return objectList;
}
