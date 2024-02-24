/// discount_ratio : "-73%"
/// original_price : "SAR 44.85"
/// price_formated : "SAR 12"
/// originalPriceWithoutCurrency : 44.85
/// priceWithoutCurrency : 12
/// date_start : 1646124763
/// date_end : 1695891145
/// tag_name : "Ramadan Deals"
/// tag_color : "2D1BD6"

class Special {
  Special({
      this.discountRatio, 
      this.originalPrice, 
      this.priceFormated, 
      this.originalPriceWithoutCurrency, 
      this.priceWithoutCurrency, 
      this.dateStart, 
      this.dateEnd, 
      this.tagName, 
      this.tagColor,});

  Special.fromJson(dynamic json) {
    discountRatio = json['discount_ratio'];
    originalPrice = json['original_price'];
    priceFormated = json['price_formated'];
    originalPriceWithoutCurrency = json['originalPriceWithoutCurrency'];
    priceWithoutCurrency = json['priceWithoutCurrency'];
    dateStart = json['date_start'];
    dateEnd = json['date_end'];
    tagName = json['tag_name'];
    tagColor = json['tag_color'];
  }
  String? discountRatio;
  String? originalPrice;
  String? priceFormated;
  double? originalPriceWithoutCurrency;
  num? priceWithoutCurrency;
  int? dateStart;
  int? dateEnd;
  String? tagName;
  String? tagColor;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['discount_ratio'] = discountRatio;
    map['original_price'] = originalPrice;
    map['price_formated'] = priceFormated;
    map['originalPriceWithoutCurrency'] = originalPriceWithoutCurrency;
    map['priceWithoutCurrency'] = priceWithoutCurrency;
    map['date_start'] = dateStart;
    map['date_end'] = dateEnd;
    map['tag_name'] = tagName;
    map['tag_color'] = tagColor;
    return map;
  }

}