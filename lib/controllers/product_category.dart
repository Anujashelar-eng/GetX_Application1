class ProductCategory {
  ProductCategory({
    required this.codePk,
    required this.deleteFlag,
    required this.description,
    required this.parentCode,
    required this.parentType,
    required this.typePk,
    required this.value,
  });

  final String? codePk;
  final String? deleteFlag;
  final String? description;
  final String? parentCode;
  final String? parentType;
  final String? typePk;
  final String? value;

  ProductCategory copyWith({
    String? codePk,
    String? deleteFlag,
    String? description,
    String? parentCode,
    String? parentType,
    String? typePk,
    String? value,
  }) {
    return ProductCategory(
      codePk: codePk ?? this.codePk,
      deleteFlag: deleteFlag ?? this.deleteFlag,
      description: description ?? this.description,
      parentCode: parentCode ?? this.parentCode,
      parentType: parentType ?? this.parentType,
      typePk: typePk ?? this.typePk,
      value: value ?? this.value,
    );
  }

  factory ProductCategory.fromJson(Map<String, dynamic> json){
    return ProductCategory(
      codePk: json["CodePk"],
      deleteFlag: json["DeleteFlag"],
      description: json["Description"],
      parentCode: json["ParentCode"],
      parentType: json["ParentType"],
      typePk: json["TypePk"],
      value: json["Value"],
    );
  }

  Map<String, dynamic> toJson() => {
    "CodePk": codePk,
    "DeleteFlag": deleteFlag,
    "Description": description,
    "ParentCode": parentCode,
    "ParentType": parentType,
    "TypePk": typePk,
    "Value": value,
  };

  @override
  String toString(){
    return "$codePk, $deleteFlag, $description, $parentCode, $parentType, $typePk, $value, ";
  }
}

// {
// "CodePk": "36",
// "DeleteFlag": "N",
// "Description": "Coffee Machines",
// "ParentCode": "ASKO",
// "ParentType": "BRND",
// "TypePk": "PCAT",
// "Value": "Coffee Machines"
// }