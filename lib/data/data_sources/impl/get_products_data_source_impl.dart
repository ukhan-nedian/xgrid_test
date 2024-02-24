import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:xgrid_test/constants/exception.dart';
import 'package:xgrid_test/data/data_sources/get_products_data_source.dart';
import 'package:xgrid_test/domain/entities/ResponseEntity.dart';

class GetProductsDataSourceImpl extends GetProductsDataSource {
  final http.Client client;

  GetProductsDataSourceImpl({required this.client});

  @override
  Future<ResponseEntity> getProducts() async {
    final http.Response response = await client.get(
      Uri.parse('http:localhost:8080/api/get_products'),
    );

    print('response.statusCode = ${response.statusCode}');
    print('response.body = ${response.body}');

    if (response.statusCode == 200) {
      var responseEntity = ResponseEntity.fromJson(jsonDecode(response.body));
      if (responseEntity.success != 1 &&
          (responseEntity.error?.isNotEmpty ?? false)) {
        throw ApiException(errorMessage: 'Products not found');
      }
      return responseEntity;
    } else {
      throw ServerException();
    }
  }
}
