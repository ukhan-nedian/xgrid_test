/// filters : []

class Ad {
  Ad({
      this.filters,});

  Ad.fromJson(dynamic json) {
    if (json['filters'] != null) {
      filters = [];
      /*json['filters'].forEach((v) {
        filters?.add(Dynamic.fromJson(v));
      });*/
    }
  }
  List<dynamic>? filters;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (filters != null) {
      map['filters'] = filters?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}