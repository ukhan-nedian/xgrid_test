import 'package:equatable/equatable.dart';

import 'Products1.dart';
import 'Totals.dart';

/// products1 : [{"key":"556268","thumb":"https://d3e7ardzpaj3y4.cloudfront.net/image/catalog/product/86828033_Dermaroller4in1Kit-500x500.png","name":"Derma roller 4 in 1 Kit","product_id":"80","category_id":"59","manufacturer_name":"Derma roller System","model":null,"option":[],"quantity":"1","minimum":"1","maximum":"0","stock":false,"reward":"","price_no_tax":32,"price_no_tax_formatted":"SAR 32","price":"149.50","price_formatted":"SAR 149.50","total":"36.80","total_formatted":"SAR 36.80","avaialble_quantity":0,"cross_discount":null,"en_name":"Derma roller 4 in 1 Kit","event_price":"36.80","special":[{"discount_ratio":"-79%","original_price":"SAR 149.50","price_formated":"SAR 36.80","originalPriceWithoutCurrency":149.5,"priceWithoutCurrency":36.8}],"category_hierarchy":[{"category_id":"46","name":"Care","en_name":"Care"},{"category_id":"59","name":"Devices","en_name":"Devices"},{"category_id":"67","name":"Face Care","en_name":"Face Care"},{"category_id":"70","name":"Hair Care","en_name":"Hair Care"},{"category_id":"76","name":"Facial Devices","en_name":"Facial Devices"},{"category_id":"102","name":"Body Devices","en_name":"Body Devices"},{"category_id":"315","name":"Tools and Accessories","en_name":"Tools and Accessories"}]}]
/// vouchers : []
/// coupon_status : "1"
/// coupon : ""
/// voucher_status : null
/// voucher : ""
/// reward_status : 0
/// reward : ""
/// totals : [{"title":"Sub-Total","text":"SAR 32","value":"32.00","code":"sub_total"},{"title":"Tax Rate (15%)","text":"SAR 4.80","value":"4.80","code":"tax"},{"title":"Total","text":"SAR 36.80","value":"36.80","code":"total"}]
/// offer : "<b>Want Free Shipping?</b> Add <span style='text-color: #DC02F0'>SAR 539.35</span> more"
/// offer_average : 7
/// total : "1 item(s) - SAR 36.80"
/// total_raw : 36.8
/// total_product_count : 1

class Cart extends Equatable {
  Cart({
    this.products1,
    this.vouchers,
    this.couponStatus,
    this.coupon,
    this.voucherStatus,
    this.voucher,
    this.rewardStatus,
    this.reward,
    this.totals,
    this.offer,
    this.offerAverage,
    this.total,
    this.totalRaw,
    this.totalProductCount,
  });

  Cart.fromJson(dynamic json) {
    if (json['products'] != null) {
      products1 = [];
      json['products'].forEach((v) {
        products1?.add(Products1.fromJson(v));
      });
    }
    if (json['vouchers'] != null) {
      vouchers = [];
      /*json['vouchers'].forEach((v) {
        vouchers?.add(Dynamic.fromJson(v));
      });*/
    }
    couponStatus = json['coupon_status'];
    coupon = json['coupon'];
    voucherStatus = json['voucher_status'];
    voucher = json['voucher'];
    rewardStatus = json['reward_status'];
    reward = json['reward'];
    if (json['totals'] != null) {
      totals = [];
      json['totals'].forEach((v) {
        totals?.add(Totals.fromJson(v));
      });
    }
    offer = json['offer'];
    offerAverage = json['offer_average'];
    total = json['total'];
    totalRaw = json['total_raw'];
    totalProductCount = json['total_product_count'];
  }

  List<Products1>? products1;
  List<dynamic>? vouchers;
  String? couponStatus;
  String? coupon;
  dynamic voucherStatus;
  String? voucher;
  int? rewardStatus;
  String? reward;
  List<Totals>? totals;
  String? offer;
  int? offerAverage;
  String? total;
  double? totalRaw;
  int? totalProductCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (products1 != null) {
      map['products'] = products1?.map((v) => v.toJson()).toList();
    }
    if (vouchers != null) {
      map['vouchers'] = vouchers?.map((v) => v.toJson()).toList();
    }
    map['coupon_status'] = couponStatus;
    map['coupon'] = coupon;
    map['voucher_status'] = voucherStatus;
    map['voucher'] = voucher;
    map['reward_status'] = rewardStatus;
    map['reward'] = reward;
    if (totals != null) {
      map['totals'] = totals?.map((v) => v.toJson()).toList();
    }
    map['offer'] = offer;
    map['offer_average'] = offerAverage;
    map['total'] = total;
    map['total_raw'] = totalRaw;
    map['total_product_count'] = totalProductCount;
    return map;
  }

  @override
  List<Object?> get props => [total];
}
