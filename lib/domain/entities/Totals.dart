/// title : "Sub-Total"
/// text : "SAR 32"
/// value : "32.00"
/// code : "sub_total"

class Totals {
  Totals({
      this.title, 
      this.text, 
      this.value, 
      this.code,});

  Totals.fromJson(dynamic json) {
    title = json['title'];
    text = json['text'];
    value = json['value'];
    code = json['code'];
  }
  String? title;
  String? text;
  String? value;
  String? code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['text'] = text;
    map['value'] = value;
    map['code'] = code;
    return map;
  }

}