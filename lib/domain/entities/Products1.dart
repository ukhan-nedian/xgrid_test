import 'Special.dart';
import 'CategoryHierarchy.dart';

/// key : "556268"
/// thumb : "https://d3e7ardzpaj3y4.cloudfront.net/image/catalog/product/86828033_Dermaroller4in1Kit-500x500.png"
/// name : "Derma roller 4 in 1 Kit"
/// product_id : "80"
/// category_id : "59"
/// manufacturer_name : "Derma roller System"
/// model : null
/// option : []
/// quantity : "1"
/// minimum : "1"
/// maximum : "0"
/// stock : false
/// reward : ""
/// price_no_tax : 32
/// price_no_tax_formatted : "SAR 32"
/// price : "149.50"
/// price_formatted : "SAR 149.50"
/// total : "36.80"
/// total_formatted : "SAR 36.80"
/// avaialble_quantity : 0
/// cross_discount : null
/// en_name : "Derma roller 4 in 1 Kit"
/// event_price : "36.80"
/// special : [{"discount_ratio":"-79%","original_price":"SAR 149.50","price_formated":"SAR 36.80","originalPriceWithoutCurrency":149.5,"priceWithoutCurrency":36.8}]
/// category_hierarchy : [{"category_id":"46","name":"Care","en_name":"Care"},{"category_id":"59","name":"Devices","en_name":"Devices"},{"category_id":"67","name":"Face Care","en_name":"Face Care"},{"category_id":"70","name":"Hair Care","en_name":"Hair Care"},{"category_id":"76","name":"Facial Devices","en_name":"Facial Devices"},{"category_id":"102","name":"Body Devices","en_name":"Body Devices"},{"category_id":"315","name":"Tools and Accessories","en_name":"Tools and Accessories"}]

class Products1 {
  Products1({
      this.key, 
      this.thumb, 
      this.name, 
      this.productId, 
      this.categoryId, 
      this.manufacturerName, 
      this.model, 
      this.option, 
      this.quantity, 
      this.minimum, 
      this.maximum, 
      this.stock, 
      this.reward, 
      this.priceNoTax, 
      this.priceNoTaxFormatted, 
      this.price, 
      this.priceFormatted, 
      this.total, 
      this.totalFormatted, 
      this.avaialbleQuantity, 
      this.crossDiscount, 
      this.enName, 
      this.eventPrice, 
      this.special, 
      this.categoryHierarchy,});

  Products1.fromJson(dynamic json) {
    key = json['key'];
    thumb = json['thumb'];
    name = json['name'];
    productId = json['product_id'];
    categoryId = json['category_id'];
    manufacturerName = json['manufacturer_name'];
    model = json['model'];
    if (json['option'] != null) {
      option = [];
      /*json['option'].forEach((v) {
        option?.add(Dynamic.fromJson(v));
      });*/
    }
    quantity = json['quantity'];
    minimum = json['minimum'];
    maximum = json['maximum'];
    stock = json['stock'];
    reward = json['reward'];
    priceNoTax = json['price_no_tax'];
    priceNoTaxFormatted = json['price_no_tax_formatted'];
    price = json['price'];
    priceFormatted = json['price_formatted'];
    total = json['total'];
    totalFormatted = json['total_formatted'];
    avaialbleQuantity = json['avaialble_quantity'];
    crossDiscount = json['cross_discount'];
    enName = json['en_name'];
    eventPrice = json['event_price'];
    if (json['special'] != null) {
      special = [];
      json['special'].forEach((v) {
        special?.add(Special.fromJson(v));
      });
    }
    if (json['category_hierarchy'] != null) {
      categoryHierarchy = [];
      json['category_hierarchy'].forEach((v) {
        categoryHierarchy?.add(CategoryHierarchy.fromJson(v));
      });
    }
  }
  String? key;
  String? thumb;
  String? name;
  String? productId;
  String? categoryId;
  String? manufacturerName;
  dynamic model;
  List<dynamic>? option;
  String? quantity;
  String? minimum;
  String? maximum;
  bool? stock;
  String? reward;
  int? priceNoTax;
  String? priceNoTaxFormatted;
  String? price;
  String? priceFormatted;
  String? total;
  String? totalFormatted;
  int? avaialbleQuantity;
  dynamic crossDiscount;
  String? enName;
  String? eventPrice;
  List<Special>? special;
  List<CategoryHierarchy>? categoryHierarchy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['thumb'] = thumb;
    map['name'] = name;
    map['product_id'] = productId;
    map['category_id'] = categoryId;
    map['manufacturer_name'] = manufacturerName;
    map['model'] = model;
    if (option != null) {
      map['option'] = option?.map((v) => v.toJson()).toList();
    }
    map['quantity'] = quantity;
    map['minimum'] = minimum;
    map['maximum'] = maximum;
    map['stock'] = stock;
    map['reward'] = reward;
    map['price_no_tax'] = priceNoTax;
    map['price_no_tax_formatted'] = priceNoTaxFormatted;
    map['price'] = price;
    map['price_formatted'] = priceFormatted;
    map['total'] = total;
    map['total_formatted'] = totalFormatted;
    map['avaialble_quantity'] = avaialbleQuantity;
    map['cross_discount'] = crossDiscount;
    map['en_name'] = enName;
    map['event_price'] = eventPrice;
    if (special != null) {
      map['special'] = special?.map((v) => v.toJson()).toList();
    }
    if (categoryHierarchy != null) {
      map['category_hierarchy'] = categoryHierarchy?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}