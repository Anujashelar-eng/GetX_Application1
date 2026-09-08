class BrandModel {
  final String codePk;
  final String deleteFlag;
  final String description;
  final String parentCode;
  final String parentType;
  final String typePk;
  final String value;

  BrandModel({
    required this.codePk,
    required this.deleteFlag,
    required this.description,
    required this.parentCode,
    required this.parentType,
    required this.typePk,
    required this.value,
  });

  factory BrandModel.fromJson(Map<String, dynamic> json) {
    return BrandModel(
      codePk: json["CodePk"] ?? "",
      deleteFlag: json["DeleteFlag"] ?? "",
      description: json["Description"] ?? "",
      parentCode: json["ParentCode"] ?? "",
      parentType: json["ParentType"] ?? "",
      typePk: json["TypePk"] ?? "",
      value: json["Value"] ?? "",
    );
  }
}