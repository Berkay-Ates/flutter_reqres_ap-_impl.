enum SharedEnums {
  usersEmail;
}

extension SharedEnumsExtension on SharedEnums {
  String get getEnumName {
    return name.toString();
  }
}
