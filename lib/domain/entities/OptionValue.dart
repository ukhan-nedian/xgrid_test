/// product_option_variant_id : 658
/// quantity : 0
/// image : "https://d3e7ardzpaj3y4.cloudfront.net/image/catalog/32350501_Nars Concealer van-500x500.png"
/// hex_color : "ddcbc1"
/// sku : "  E2-130"
/// price : "178.25"
/// price_formated : "SAR 178.25"
/// event_price : "178.25"
/// name : "Vanilla "
/// en_name : "Vanilla "

class OptionValue {
  OptionValue({
      this.productOptionVariantId, 
      this.quantity, 
      this.image, 
      this.hexColor, 
      this.sku, 
      this.price, 
      this.priceFormated, 
      this.eventPrice, 
      this.name, 
      this.enName,});

  OptionValue.fromJson(dynamic json) {
    productOptionVariantId = json['product_option_variant_id'];
    quantity = json['quantity'];
    image = json['image'];
    hexColor = json['hex_color'];
    sku = json['sku'];
    price = json['price'];
    priceFormated = json['price_formated'];
    eventPrice = json['event_price'];
    name = json['name'];
    enName = json['en_name'];
  }
  int? productOptionVariantId;
  int? quantity;
  String? image;
  String? hexColor;
  String? sku;
  String? price;
  String? priceFormated;
  String? eventPrice;
  String? name;
  String? enName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['product_option_variant_id'] = productOptionVariantId;
    map['quantity'] = quantity;
    map['image'] = image;
    map['hex_color'] = hexColor;
    map['sku'] = sku;
    map['price'] = price;
    map['price_formated'] = priceFormated;
    map['event_price'] = eventPrice;
    map['name'] = name;
    map['en_name'] = enName;
    return map;
  }

}