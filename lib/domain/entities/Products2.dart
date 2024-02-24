import 'package:equatable/equatable.dart';

import 'Options.dart';
import 'CategoryHierarchy.dart';
import 'Special.dart';

/// id : "344"
/// thumb : "https://d3e7ardzpaj3y4.cloudfront.net/image/catalog/66545885_Nars Concealer11-500x500.png"
/// price_formated : "SAR 178.25"
/// priceWithoutCurrency : "178.25"
/// price : 178.25
/// name : "Nars Radiant Creamy Concealer1"
/// en_name : "Nars Radiant Creamy Concealer1"
/// description : "Nars Radiant Creamy Concealer:The #1 concealer in the U.S.* Coveted by artists and non-artists alike for its luxurious texture and luminous finishRadiant Creamy Concealer delivers all-purpose perfection for all skin tones. Enriched with hydrating, multi-action skincare benefits and light diffusing technology, it creates a softer, smoother complexion while instantly obscuring imperfections and diminishing fine lines and signs of fatigue."
/// sku : "A5-135"
/// isbn : "607845012375"
/// has_option : true
/// category_id : 13
/// quantity : 190
/// special : []
/// manufacturer : "NARS"
/// is_new : false
/// is_exclusive : false
/// order : 0
/// score : null
/// event_price : "178.25"
/// rating : 4.6
/// total_reviews : "23"
/// seo_url_ar : "makeup/face/concealer-amp-correcter/nars-radiant-creamy-concealer1-n344/"
/// seo_url_en : "makeup/face/concealer-amp-correcter/nars-radiant-creamy-concealer1-n344/"
/// share_url : "-"
/// options : [{"option_id":31,"product_option_id":483,"type":"radio","required":1,"name":"Concealer Color","en_name":"Concealer Color","option_value":[{"product_option_variant_id":658,"quantity":0,"image":"https://d3e7ardzpaj3y4.cloudfront.net/image/catalog/32350501_Nars Concealer van-500x500.png","hex_color":"ddcbc1","sku":"  E2-130","price":"178.25","price_formated":"SAR 178.25","event_price":"178.25","name":"Vanilla ","en_name":"Vanilla "},{"product_option_variant_id":659,"quantity":0,"image":"https://d3e7ardzpaj3y4.cloudfront.net/image/catalog/81837310_Nars Concealer cus-500x500.png","hex_color":"e0ccb1","sku":"  C3-058","price":"178.25","price_formated":"SAR 178.25","event_price":"178.25","name":"Custard","en_name":"Custard"},{"product_option_variant_id":660,"quantity":0,"image":"https://d3e7ardzpaj3y4.cloudfront.net/image/catalog/53647559_Nars Concealer ging-500x500.png","hex_color":"e2c0a4","sku":"  B3-154","price":"178.25","price_formated":"SAR 178.25","event_price":"178.25","name":"Ginger","en_name":"Ginger"},{"product_option_variant_id":661,"quantity":0,"image":"https://d3e7ardzpaj3y4.cloudfront.net/image/catalog/15771929_Nars Concealer bis-500x500.png","hex_color":"f2e5dd","sku":"  E3-086","price":"178.25","price_formated":"SAR 178.25","event_price":"178.25","name":"Biscuit ","en_name":"Biscuit "},{"product_option_variant_id":662,"quantity":0,"image":"https://d3e7ardzpaj3y4.cloudfront.net/image/catalog/26967967_Nars Concealer hon-500x500.png","hex_color":"debfad","sku":"  F2-072","price":"178.25","price_formated":"SAR 178.25","event_price":"178.25","name":"Honey","en_name":"Honey"},{"product_option_variant_id":663,"quantity":190,"image":"https://d3e7ardzpaj3y4.cloudfront.net/image/catalog/25401259_Nars Concealer car-500x500.png","hex_color":"b98a56","sku":"  E1-042","price":"178.25","price_formated":"SAR 178.25","event_price":"178.25","name":"Caramel","en_name":"Caramel"},{"product_option_variant_id":664,"quantity":0,"image":"https://d3e7ardzpaj3y4.cloudfront.net/image/catalog/64064154_Nars Concealer amande-500x500.png","hex_color":"ab7748","sku":"  J3-050","price":"178.25","price_formated":"SAR 178.25","event_price":"178.25","name":"Amande","en_name":"Amande"},{"product_option_variant_id":997,"quantity":0,"image":"https://d3e7ardzpaj3y4.cloudfront.net/image/catalog/31742096_Sucre D'org-500x500.png","hex_color":"f3c89f","sku":"  L5-570","price":"178.25","price_formated":"SAR 178.25","event_price":"178.25","name":"Sucre D'orge","en_name":"Sucre D'orge"},{"product_option_variant_id":998,"quantity":0,"image":"https://d3e7ardzpaj3y4.cloudfront.net/image/catalog/35193423_Tiramisu-500x500.png","hex_color":"e3ad82","sku":"  F4-061","price":"178.25","price_formated":"SAR 178.25","event_price":"178.25","name":"Tiramisu","en_name":"Tiramisu"},{"product_option_variant_id":8788,"quantity":0,"image":"","hex_color":"","sku":"","price":"0.00","price_formated":"SAR 0","event_price":"0.00","name":"005","en_name":"005"}]}]
/// category_hierarchy : [{"category_id":13,"name":"Makeup","en_name":"Makeup"},{"category_id":18,"name":"Face","en_name":"Face"},{"category_id":117,"name":"Concealer &amp; Correcter","en_name":"Concealer &amp; Correcter"}]

class Products2 extends Equatable {
  Products2({
      this.id, 
      this.thumb, 
      this.priceFormated, 
      this.priceWithoutCurrency, 
      this.price, 
      this.name, 
      this.enName, 
      this.description, 
      this.sku, 
      this.isbn, 
      this.hasOption, 
      this.categoryId, 
      this.quantity, 
      this.special, 
      this.manufacturer, 
      this.isNew, 
      this.isExclusive, 
      this.order, 
      this.score, 
      this.eventPrice, 
      this.rating, 
      this.totalReviews, 
      this.seoUrlAr, 
      this.seoUrlEn, 
      this.shareUrl, 
      this.options, 
      this.categoryHierarchy,});

  Products2.fromJson(dynamic json) {
    id = json['id'];
    thumb = json['thumb'];
    priceFormated = json['price_formated'];
    priceWithoutCurrency = json['priceWithoutCurrency'];
    price = json['price'];
    name = json['name'];
    enName = json['en_name'];
    description = json['description'];
    sku = json['sku'];
    isbn = json['isbn'];
    hasOption = json['has_option'];
    categoryId = json['category_id'];
    quantity = json['quantity'];
    if (json['special'] != null) {
      special = [];
      json['special'].forEach((v) {
        special?.add(Special.fromJson(v));
      });
    }
    manufacturer = json['manufacturer'];
    isNew = json['is_new'];
    isExclusive = json['is_exclusive'];
    order = json['order'];
    score = json['score'];
    eventPrice = json['event_price'];
    rating = json['rating'];
    totalReviews = json['total_reviews'];
    seoUrlAr = json['seo_url_ar'];
    seoUrlEn = json['seo_url_en'];
    shareUrl = json['share_url'];
    if (json['options'] != null) {
      options = [];
      json['options'].forEach((v) {
        options?.add(Options.fromJson(v));
      });
    }
    if (json['category_hierarchy'] != null) {
      categoryHierarchy = [];
      json['category_hierarchy'].forEach((v) {
        categoryHierarchy?.add(CategoryHierarchy.fromJson(v));
      });
    }
  }
  String? id;
  String? thumb;
  String? priceFormated;
  String? priceWithoutCurrency;
  num? price;
  String? name;
  String? enName;
  String? description;
  String? sku;
  String? isbn;
  bool? hasOption;
  int? categoryId;
  int? quantity;
  List<dynamic>? special;
  String? manufacturer;
  bool? isNew;
  bool? isExclusive;
  int? order;
  dynamic score;
  String? eventPrice;
  num? rating;
  String? totalReviews;
  String? seoUrlAr;
  String? seoUrlEn;
  String? shareUrl;
  List<Options>? options;
  List<CategoryHierarchy>? categoryHierarchy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['thumb'] = thumb;
    map['price_formated'] = priceFormated;
    map['priceWithoutCurrency'] = priceWithoutCurrency;
    map['price'] = price;
    map['name'] = name;
    map['en_name'] = enName;
    map['description'] = description;
    map['sku'] = sku;
    map['isbn'] = isbn;
    map['has_option'] = hasOption;
    map['category_id'] = categoryId;
    map['quantity'] = quantity;
    if (special != null) {
      map['special'] = special?.map((v) => v.toJson()).toList();
    }
    map['manufacturer'] = manufacturer;
    map['is_new'] = isNew;
    map['is_exclusive'] = isExclusive;
    map['order'] = order;
    map['score'] = score;
    map['event_price'] = eventPrice;
    map['rating'] = rating;
    map['total_reviews'] = totalReviews;
    map['seo_url_ar'] = seoUrlAr;
    map['seo_url_en'] = seoUrlEn;
    map['share_url'] = shareUrl;
    if (options != null) {
      map['options'] = options?.map((v) => v.toJson()).toList();
    }
    if (categoryHierarchy != null) {
      map['category_hierarchy'] = categoryHierarchy?.map((v) => v.toJson()).toList();
    }
    return map;
  }

  @override
  List<Object?> get props => [id, name, price];
}