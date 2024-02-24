import 'OptionValue.dart';

/// option_id : 31
/// product_option_id : 483
/// type : "radio"
/// required : 1
/// name : "Concealer Color"
/// en_name : "Concealer Color"
/// option_value : [{"product_option_variant_id":658,"quantity":0,"image":"https://d3e7ardzpaj3y4.cloudfront.net/image/catalog/32350501_Nars Concealer van-500x500.png","hex_color":"ddcbc1","sku":"  E2-130","price":"178.25","price_formated":"SAR 178.25","event_price":"178.25","name":"Vanilla ","en_name":"Vanilla "},{"product_option_variant_id":659,"quantity":0,"image":"https://d3e7ardzpaj3y4.cloudfront.net/image/catalog/81837310_Nars Concealer cus-500x500.png","hex_color":"e0ccb1","sku":"  C3-058","price":"178.25","price_formated":"SAR 178.25","event_price":"178.25","name":"Custard","en_name":"Custard"},{"product_option_variant_id":660,"quantity":0,"image":"https://d3e7ardzpaj3y4.cloudfront.net/image/catalog/53647559_Nars Concealer ging-500x500.png","hex_color":"e2c0a4","sku":"  B3-154","price":"178.25","price_formated":"SAR 178.25","event_price":"178.25","name":"Ginger","en_name":"Ginger"},{"product_option_variant_id":661,"quantity":0,"image":"https://d3e7ardzpaj3y4.cloudfront.net/image/catalog/15771929_Nars Concealer bis-500x500.png","hex_color":"f2e5dd","sku":"  E3-086","price":"178.25","price_formated":"SAR 178.25","event_price":"178.25","name":"Biscuit ","en_name":"Biscuit "},{"product_option_variant_id":662,"quantity":0,"image":"https://d3e7ardzpaj3y4.cloudfront.net/image/catalog/26967967_Nars Concealer hon-500x500.png","hex_color":"debfad","sku":"  F2-072","price":"178.25","price_formated":"SAR 178.25","event_price":"178.25","name":"Honey","en_name":"Honey"},{"product_option_variant_id":663,"quantity":190,"image":"https://d3e7ardzpaj3y4.cloudfront.net/image/catalog/25401259_Nars Concealer car-500x500.png","hex_color":"b98a56","sku":"  E1-042","price":"178.25","price_formated":"SAR 178.25","event_price":"178.25","name":"Caramel","en_name":"Caramel"},{"product_option_variant_id":664,"quantity":0,"image":"https://d3e7ardzpaj3y4.cloudfront.net/image/catalog/64064154_Nars Concealer amande-500x500.png","hex_color":"ab7748","sku":"  J3-050","price":"178.25","price_formated":"SAR 178.25","event_price":"178.25","name":"Amande","en_name":"Amande"},{"product_option_variant_id":997,"quantity":0,"image":"https://d3e7ardzpaj3y4.cloudfront.net/image/catalog/31742096_Sucre D'org-500x500.png","hex_color":"f3c89f","sku":"  L5-570","price":"178.25","price_formated":"SAR 178.25","event_price":"178.25","name":"Sucre D'orge","en_name":"Sucre D'orge"},{"product_option_variant_id":998,"quantity":0,"image":"https://d3e7ardzpaj3y4.cloudfront.net/image/catalog/35193423_Tiramisu-500x500.png","hex_color":"e3ad82","sku":"  F4-061","price":"178.25","price_formated":"SAR 178.25","event_price":"178.25","name":"Tiramisu","en_name":"Tiramisu"},{"product_option_variant_id":8788,"quantity":0,"image":"","hex_color":"","sku":"","price":"0.00","price_formated":"SAR 0","event_price":"0.00","name":"005","en_name":"005"}]

class Options {
  Options({
      this.optionId, 
      this.productOptionId, 
      this.type, 
      this.required, 
      this.name, 
      this.enName, 
      this.optionValue,});

  Options.fromJson(dynamic json) {
    optionId = json['option_id'];
    productOptionId = json['product_option_id'];
    type = json['type'];
    required = json['required'];
    name = json['name'];
    enName = json['en_name'];
    if (json['option_value'] != null) {
      optionValue = [];
      json['option_value'].forEach((v) {
        optionValue?.add(OptionValue.fromJson(v));
      });
    }
  }
  int? optionId;
  int? productOptionId;
  String? type;
  int? required;
  String? name;
  String? enName;
  List<OptionValue>? optionValue;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['option_id'] = optionId;
    map['product_option_id'] = productOptionId;
    map['type'] = type;
    map['required'] = required;
    map['name'] = name;
    map['en_name'] = enName;
    if (optionValue != null) {
      map['option_value'] = optionValue?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}