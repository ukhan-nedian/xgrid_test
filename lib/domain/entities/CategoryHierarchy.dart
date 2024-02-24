/// category_id : 13
/// name : "Makeup"
/// en_name : "Makeup"

class CategoryHierarchy {
  CategoryHierarchy({this.categoryId, this.name, this.enName});

  CategoryHierarchy.fromJson(dynamic json) {
    categoryId = json['category_id'].toString();
    name = json['name'];
    enName = json['en_name'];
  }

  String? categoryId;
  String? name;
  String? enName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['category_id'] = categoryId.toString();
    map['name'] = name;
    map['en_name'] = enName;
    return map;
  }
}
