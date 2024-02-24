import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:xgrid_test/domain/entities/Cart.dart';
import 'package:xgrid_test/domain/entities/Data.dart';
import 'package:xgrid_test/domain/entities/Products2.dart';
import 'package:xgrid_test/domain/entities/RecommendedProducts.dart';
import 'package:xgrid_test/domain/entities/ResponseEntity.dart';

import '../../helpers/json_reader.dart';

void main() {
  final ResponseEntity testResponseEntity = ResponseEntity(
    success: 1,
    error: const [],
    data: Data(
      cart: Cart(total: "1 item(s) - SAR 36.80"),
    ),
  );

  test('valid Response from Json', () {
    // Arrange
    final Map<String, dynamic> jsonMap = jsonDecode(
      readJson('helpers/dummy_data/Mobile-Task-API-Response.json'),
    );

    // Act
    final ResponseEntity responseEntity = ResponseEntity.fromJson(jsonMap);

    // Assert
    expect(responseEntity, equals(testResponseEntity));
  });
}
